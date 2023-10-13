// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserViewModel on _UserViewModelBase, Store {
  late final _$productAtom =
      Atom(name: '_UserViewModelBase.product', context: context);

  @override
  Product get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(Product value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  late final _$getProductAsyncAction =
      AsyncAction('_UserViewModelBase.getProduct', context: context);

  @override
  Future<void> getProduct(int id) {
    return _$getProductAsyncAction.run(() => super.getProduct(id));
  }

  late final _$createProductAsyncAction =
      AsyncAction('_UserViewModelBase.createProduct', context: context);

  @override
  Future<void> createProduct(Product product) {
    return _$createProductAsyncAction.run(() => super.createProduct(product));
  }

  @override
  String toString() {
    return '''
product: ${product}
    ''';
  }
}
