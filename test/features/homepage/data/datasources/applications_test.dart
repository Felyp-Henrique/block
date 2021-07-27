import 'package:block/features/homepage/data/datasources/applications.dart';
import 'package:block/features/homepage/data/models/application.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'applications_test.mocks.dart';
import 'package:faker/faker.dart' as faker;

@GenerateMocks([ApplicationDataSourceBase])
void main() {
  late MockApplicationDataSourceBase dataSource;
  late List<ApplicationModel> apps;

  setUp(() {
    dataSource = MockApplicationDataSourceBase();
    apps = List.generate(10, (_) => ApplicationModel(
      id: faker.random.integer(1000),
      name: faker.random.string(15, min: 10),
      package: faker.random.string(20, min: 15),
      is_blocked: faker.random.boolean(),
    ));
  });

  group('success case', () {

    test('get all applications', () async {
      when(dataSource.all())
        .thenAnswer((_) async => apps);
      
      expect(await dataSource.all(), apps);
    });

    test('find application by id', () async {
      ApplicationModel app = apps.first;
      
      when(dataSource.find(app.id))
        .thenAnswer((_) async => app);
      
      expect(await dataSource.find(app.id), app);
    });

    test('create application and get the id', () async {
      ApplicationModel app = apps.last;

      when(dataSource.create(app))
        .thenAnswer((_) async => app.id);
      
      expect(await dataSource.create(app), app.id);
    });
  });
}
