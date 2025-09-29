import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: TrainingModuleScreen(),
  ));
}

/// Drop-in Training Module screen for an ESS/HRMS app.
/// - Tabs: Catalogue, Calendar, My Trainings, Requests
/// - Search + filters, enroll & cancel actions
/// - Material 3, responsive, supports dark mode
///
/// Usage:
/// Navigator.push(context, MaterialPageRoute(builder: (_) => const TrainingModuleScreen()));
class TrainingModuleScreen extends StatefulWidget {
  const TrainingModuleScreen({super.key});

  @override
  State<TrainingModuleScreen> createState() => _TrainingModuleScreenState();
}

class _TrainingModuleScreenState extends State<TrainingModuleScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  String _query = '';
  String _category = 'All';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isWide = MediaQuery.of(context).size.width >= 900;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Training'),
        centerTitle: true,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(96),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: _TopSearchAndFilters(
                  onQueryChanged: (v) => setState(() => _query = v),
                  onCategoryChanged: (v) => setState(() => _category = v),
                ),
              ),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                tabs: const [
                  Tab(text: 'Catalogue', icon: Icon(Icons.menu_book_outlined)),
                  Tab(text: 'Calendar', icon: Icon(Icons.event_note_outlined)),
                  Tab(text: 'My Trainings', icon: Icon(Icons.school_outlined)),
                  Tab(text: 'Requests', icon: Icon(Icons.assignment_outlined)),
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _CatalogueTab(query: _query, category: _category, isWide: isWide),
          const _CalendarTab(),
          const _MyTrainingsTab(),
          const _RequestsTab(),
        ],
      ),
      floatingActionButton: _tabController.index == 1
          ? FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('New Session'),
            )
          : null,
    );
  }
}

class _TopSearchAndFilters extends StatelessWidget {
  const _TopSearchAndFilters({
    required this.onQueryChanged,
    required this.onCategoryChanged,
  });

  final ValueChanged<String> onQueryChanged;
  final ValueChanged<String> onCategoryChanged;

  @override
  Widget build(BuildContext context) {
    final categories = const ['All', 'Mandatory', 'Technical', 'Soft Skills', 'Compliance'];

    return Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: onQueryChanged,
            decoration: InputDecoration(
              hintText: 'Search courses, skills, trainers…',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        DropdownButtonHideUnderline(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButton<String>(
              value: categories.first,
              items: categories
                  .map((c) => DropdownMenuItem<String>(
                        value: c,
                        child: Text(c),
                      ))
                  .toList(),
              onChanged: (v) {
                if (v != null) onCategoryChanged(v);
              },
            ),
          ),
        ),
      ],
    );
  }
}

// ---------------- Catalogue Tab ----------------
class _CatalogueTab extends StatelessWidget {
  const _CatalogueTab({required this.query, required this.category, required this.isWide});

  final String query;
  final String category;
  final bool isWide;

  @override
  Widget build(BuildContext context) {
    final filtered = _demoCourses.where((c) {
      final q = query.toLowerCase();
      final matchQ = q.isEmpty || c.title.toLowerCase().contains(q) || c.tags.any((t) => t.toLowerCase().contains(q));
      final matchCat = category == 'All' || c.category == category;
      return matchQ && matchCat;
    }).toList();

    if (filtered.isEmpty) {
      return const Center(child: Text('No courses match your filters'));
    }

    final gridCount = isWide ? 3 : 1;

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount,
        childAspectRatio: isWide ? 3.2 : 2.4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: filtered.length,
      itemBuilder: (context, i) => _CourseCard(course: filtered[i]),
    );
  }
}

class _CourseCard extends StatelessWidget {
  const _CourseCard({required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () => _showCourseBottomSheet(context, course),
        child: Row(
          children: [
            Container(
              width: 84,
              height: double.infinity,
              color: cs.primary.withOpacity(0.08),
              child: const Icon(Icons.menu_book, size: 36),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: cs.secondaryContainer,
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: Text(course.category, style: Theme.of(context).textTheme.labelMedium),
                        ),
                        const SizedBox(width: 8),
                        Icon(Icons.star_rounded, color: cs.tertiary, size: 18),
                        Text(course.rating.toStringAsFixed(1)),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(course.title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 6),
                    Text(course.summary, maxLines: 2, overflow: TextOverflow.ellipsis),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 6,
                      runSpacing: -6,
                      children: course.tags
                          .map((t) => Chip(label: Text(t), visualDensity: VisualDensity.compact))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.how_to_reg),
                    label: const Text('Enroll'),
                  ),
                  const SizedBox(height: 8),
                  Text('${course.duration.inHours}h', style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showCourseBottomSheet(BuildContext context, Course c) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
    builder: (_) => DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      builder: (context, controller) => Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          controller: controller,
          children: [
            Row(
              children: [
                const CircleAvatar(radius: 24, child: Icon(Icons.person)),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(c.title, style: Theme.of(context).textTheme.titleLarge),
                    Text('Trainer: ${c.trainer} • ${c.duration.inHours} hrs'),
                  ]),
                ),
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.how_to_reg),
                  label: const Text('Enroll'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(c.description),
            const SizedBox(height: 16),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.task_alt),
              title: const Text('Learning Outcomes'),
              subtitle: Text(c.outcomes.join(' • ')),
            ),
            ListTile(
              leading: const Icon(Icons.link_outlined),
              title: const Text('Delivery'),
              subtitle: Text(c.delivery),
            ),
          ],
        ),
      ),
    ),
  );
}

// ---------------- Calendar Tab ----------------
class _CalendarTab extends StatelessWidget {
  const _CalendarTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Upcoming Sessions', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        ..._demoSessions.map((s) => _SessionTile(session: s)),
      ],
    );
  }
}

class _SessionTile extends StatelessWidget {
  const _SessionTile({required this.session});
  final TrainingSession session;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: CircleAvatar(backgroundColor: cs.primary.withOpacity(0.12), child: const Icon(Icons.event)),
        title: Text(session.title),
        subtitle: Text('${session.dateString}  •  ${session.mode}  •  Room ${session.room}'),
        trailing: OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.add_alert_outlined), label: const Text('Reminder')),
      ),
    );
  }
}

// ---------------- My Trainings Tab ----------------
class _MyTrainingsTab extends StatelessWidget {
  const _MyTrainingsTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('In Progress', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        _ProgressCard(title: 'Workplace Safety', percent: 0.65, expires: 'Due 30 Sep'),
        const SizedBox(height: 16),
        Text('Completed', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        _CertificateTile(title: 'Data Privacy Basics', date: '15 Aug 2025', certId: 'CERT-92831'),
      ],
    );
  }
}

class _ProgressCard extends StatelessWidget {
  const _ProgressCard({required this.title, required this.percent, required this.expires});
  final String title;
  final double percent;
  final String expires;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              const Icon(Icons.school_outlined),
              const SizedBox(width: 8),
              Expanded(child: Text(title, style: Theme.of(context).textTheme.titleMedium)),
              Text(expires, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(value: percent, minHeight: 10),
          ),
          const SizedBox(height: 8),
          Text('${(percent * 100).round()}% completed'),
        ]),
      ),
    );
  }
}

class _CertificateTile extends StatelessWidget {
  const _CertificateTile({required this.title, required this.date, required this.certId});
  final String title;
  final String date;
  final String certId;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.verified_outlined),
        title: Text(title),
        subtitle: Text('Completed on $date\nID: $certId'),
        isThreeLine: true,
        trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.download_outlined)),
      ),
    );
  }
}

// ---------------- Requests Tab ----------------
class _RequestsTab extends StatelessWidget {
  const _RequestsTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('New Training Request')),
        const SizedBox(height: 16),
        _RequestTile(status: 'Pending', title: 'Advanced Excel for Analysts', submitted: '12 Aug 2025'),
        _RequestTile(status: 'Approved', title: 'First Aid Refresher', submitted: '04 Aug 2025'),
      ],
    );
  }
}

class _RequestTile extends StatelessWidget {
  const _RequestTile({required this.status, required this.title, required this.submitted});
  final String status;
  final String title;
  final String submitted;

  Color _statusColor(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    switch (status) {
      case 'Approved':
        return cs.primary;
      case 'Rejected':
        return Colors.red;
      default:
        return cs.secondary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(status.substring(0, 1))),
        title: Text(title),
        subtitle: Text('Submitted: $submitted'),
        trailing: Text(status, style: TextStyle(fontWeight: FontWeight.w600, color: _statusColor(context))),
      ),
    );
  }
}

// ---------------- Demo Data ----------------
class Course {
  final String title;
  final String summary;
  final String description;
  final String trainer;
  final String category; // Mandatory, Technical, Soft Skills, Compliance
  final Duration duration;
  final double rating; // 0–5
  final String delivery; // Online / Classroom / Hybrid
  final List<String> outcomes;
  final List<String> tags;

  const Course({
    required this.title,
    required this.summary,
    required this.description,
    required this.trainer,
    required this.category,
    required this.duration,
    required this.rating,
    required this.delivery,
    required this.outcomes,
    required this.tags,
  });
}

const _demoCourses = <Course>[
  Course(
    title: 'Workplace Safety Fundamentals',
    summary: 'Hazard awareness, PPE, incident reporting.',
    description: 'Comprehensive coverage of safety protocols, PPE usage, emergency response and near-miss reporting. Includes practical demonstrations and case studies.',
    trainer: 'A. Sharma',
    category: 'Mandatory',
    duration: Duration(hours: 3),
    rating: 4.7,
    delivery: 'Classroom',
    outcomes: ['Identify hazards', 'Use PPE correctly', 'Report incidents'],
    tags: ['Safety', 'PPE', 'OSHA'],
  ),
  Course(
    title: 'Effective Communication at Work',
    summary: 'Active listening, feedback, conflict handling.',
    description: 'Improve team communication with frameworks for feedback, empathetic listening and conflict resolution. Includes role-play.',
    trainer: 'M. Rao',
    category: 'Soft Skills',
    duration: Duration(hours: 2),
    rating: 4.5,
    delivery: 'Online',
    outcomes: ['Listen actively', 'Give feedback', 'Resolve conflict'],
    tags: ['Soft Skills', 'Communication'],
  ),
  Course(
    title: 'Advanced Excel for Analysts',
    summary: 'Pivot tables, Power Query, automation.',
    description: 'Hands-on with advanced formulas, pivots, data cleaning using Power Query and simple macros to automate recurring tasks.',
    trainer: 'R. Iyer',
    category: 'Technical',
    duration: Duration(hours: 5),
    rating: 4.8,
    delivery: 'Hybrid',
    outcomes: ['Model data', 'Build dashboards', 'Automate tasks'],
    tags: ['Excel', 'Analytics', 'Productivity'],
  ),
];

class TrainingSession {
  final String title;
  final DateTime dateTime;
  final String mode; // Online / Classroom
  final String room;
  TrainingSession({required this.title, required this.dateTime, required this.mode, required this.room});

  String get dateString => '${dateTime.day.toString().padLeft(2, '0')} '
      '${_month[dateTime.month]} ${dateTime.year}, '
      '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
}

const _month = [
  '', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
];

final _demoSessions = <TrainingSession>[
  TrainingSession(title: 'Workplace Safety', dateTime: DateTime(2025, 9, 2, 10, 0), mode: 'Classroom', room: 'A-102'),
  TrainingSession(title: 'Advanced Excel', dateTime: DateTime(2025, 9, 4, 14, 0), mode: 'Hybrid', room: 'LAB-3'),
  TrainingSession(title: 'Communication Skills', dateTime: DateTime(2025, 9, 7, 11, 30), mode: 'Online', room: 'Zoom'),
];
//a