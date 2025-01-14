// Mocks generated by Mockito 5.4.4 from annotations
// in application/test/features/repository_detail/page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:application/features/repository_detail/controller.dart' as _i7;
import 'package:application/models/repository.model.dart' as _i5;
import 'package:application/models/repository_readme.model.dart' as _i2;
import 'package:application/services/repository.service.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRepositoryReadMe_0 extends _i1.SmartFake
    implements _i2.RepositoryReadMe {
  _FakeRepositoryReadMe_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [RepositoryService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRepositoryService extends _i1.Mock implements _i3.RepositoryService {
  @override
  _i4.Future<List<_i5.Repository>> getRepositories({required String? query}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRepositories,
          [],
          {#query: query},
        ),
        returnValue: _i4.Future<List<_i5.Repository>>.value(<_i5.Repository>[]),
        returnValueForMissingStub:
            _i4.Future<List<_i5.Repository>>.value(<_i5.Repository>[]),
      ) as _i4.Future<List<_i5.Repository>>);

  @override
  _i4.Future<_i5.Repository> getRepository({
    required String? owner,
    required String? name,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRepository,
          [],
          {
            #owner: owner,
            #name: name,
          },
        ),
        returnValue:
            _i4.Future<_i5.Repository>.value(_i6.dummyValue<_i5.Repository>(
          this,
          Invocation.method(
            #getRepository,
            [],
            {
              #owner: owner,
              #name: name,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i5.Repository>.value(_i6.dummyValue<_i5.Repository>(
          this,
          Invocation.method(
            #getRepository,
            [],
            {
              #owner: owner,
              #name: name,
            },
          ),
        )),
      ) as _i4.Future<_i5.Repository>);

  @override
  _i4.Future<_i2.RepositoryReadMe> getRepositoryReadMe({
    required String? owner,
    required String? name,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRepositoryReadMe,
          [],
          {
            #owner: owner,
            #name: name,
          },
        ),
        returnValue:
            _i4.Future<_i2.RepositoryReadMe>.value(_FakeRepositoryReadMe_0(
          this,
          Invocation.method(
            #getRepositoryReadMe,
            [],
            {
              #owner: owner,
              #name: name,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.RepositoryReadMe>.value(_FakeRepositoryReadMe_0(
          this,
          Invocation.method(
            #getRepositoryReadMe,
            [],
            {
              #owner: owner,
              #name: name,
            },
          ),
        )),
      ) as _i4.Future<_i2.RepositoryReadMe>);

  @override
  _i4.Future<List<_i5.GitHubUser>> getRepositoryStargazers({
    required String? owner,
    required String? name,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRepositoryStargazers,
          [],
          {
            #owner: owner,
            #name: name,
          },
        ),
        returnValue: _i4.Future<List<_i5.GitHubUser>>.value(<_i5.GitHubUser>[]),
        returnValueForMissingStub:
            _i4.Future<List<_i5.GitHubUser>>.value(<_i5.GitHubUser>[]),
      ) as _i4.Future<List<_i5.GitHubUser>>);
}

/// A class which mocks [RepositoryDetailController].
///
/// See the documentation for Mockito's code generation for more information.
class MockRepositoryDetailController extends _i1.Mock
    implements _i7.RepositoryDetailController {
  @override
  _i2.RepositoryReadMe get readMe => (super.noSuchMethod(
        Invocation.getter(#readMe),
        returnValue: _FakeRepositoryReadMe_0(
          this,
          Invocation.getter(#readMe),
        ),
        returnValueForMissingStub: _FakeRepositoryReadMe_0(
          this,
          Invocation.getter(#readMe),
        ),
      ) as _i2.RepositoryReadMe);

  @override
  _i4.Future<void> onPressedReadMeLink({
    required String? text,
    required String? href,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #onPressedReadMeLink,
          [],
          {
            #text: text,
            #href: href,
          },
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  _i4.Future<void> launchRepositoryUrl() => (super.noSuchMethod(
        Invocation.method(
          #launchRepositoryUrl,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
