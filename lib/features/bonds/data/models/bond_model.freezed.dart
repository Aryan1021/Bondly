// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BondModel {

 String get isin; String get issuerName; String get creditRating; String get logoUrl; String get status; String get description;
/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BondModelCopyWith<BondModel> get copyWith => _$BondModelCopyWithImpl<BondModel>(this as BondModel, _$identity);

  /// Serializes this BondModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondModel&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.creditRating, creditRating) || other.creditRating == creditRating)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isin,issuerName,creditRating,logoUrl,status,description);

@override
String toString() {
  return 'BondModel(isin: $isin, issuerName: $issuerName, creditRating: $creditRating, logoUrl: $logoUrl, status: $status, description: $description)';
}


}

/// @nodoc
abstract mixin class $BondModelCopyWith<$Res>  {
  factory $BondModelCopyWith(BondModel value, $Res Function(BondModel) _then) = _$BondModelCopyWithImpl;
@useResult
$Res call({
 String isin, String issuerName, String creditRating, String logoUrl, String status, String description
});




}
/// @nodoc
class _$BondModelCopyWithImpl<$Res>
    implements $BondModelCopyWith<$Res> {
  _$BondModelCopyWithImpl(this._self, this._then);

  final BondModel _self;
  final $Res Function(BondModel) _then;

/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isin = null,Object? issuerName = null,Object? creditRating = null,Object? logoUrl = null,Object? status = null,Object? description = null,}) {
  return _then(_self.copyWith(
isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,issuerName: null == issuerName ? _self.issuerName : issuerName // ignore: cast_nullable_to_non_nullable
as String,creditRating: null == creditRating ? _self.creditRating : creditRating // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BondModel].
extension BondModelPatterns on BondModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BondModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BondModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BondModel value)  $default,){
final _that = this;
switch (_that) {
case _BondModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BondModel value)?  $default,){
final _that = this;
switch (_that) {
case _BondModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String isin,  String issuerName,  String creditRating,  String logoUrl,  String status,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BondModel() when $default != null:
return $default(_that.isin,_that.issuerName,_that.creditRating,_that.logoUrl,_that.status,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String isin,  String issuerName,  String creditRating,  String logoUrl,  String status,  String description)  $default,) {final _that = this;
switch (_that) {
case _BondModel():
return $default(_that.isin,_that.issuerName,_that.creditRating,_that.logoUrl,_that.status,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String isin,  String issuerName,  String creditRating,  String logoUrl,  String status,  String description)?  $default,) {final _that = this;
switch (_that) {
case _BondModel() when $default != null:
return $default(_that.isin,_that.issuerName,_that.creditRating,_that.logoUrl,_that.status,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BondModel implements BondModel {
  const _BondModel({required this.isin, required this.issuerName, required this.creditRating, required this.logoUrl, required this.status, required this.description});
  factory _BondModel.fromJson(Map<String, dynamic> json) => _$BondModelFromJson(json);

@override final  String isin;
@override final  String issuerName;
@override final  String creditRating;
@override final  String logoUrl;
@override final  String status;
@override final  String description;

/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BondModelCopyWith<_BondModel> get copyWith => __$BondModelCopyWithImpl<_BondModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BondModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BondModel&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.creditRating, creditRating) || other.creditRating == creditRating)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isin,issuerName,creditRating,logoUrl,status,description);

@override
String toString() {
  return 'BondModel(isin: $isin, issuerName: $issuerName, creditRating: $creditRating, logoUrl: $logoUrl, status: $status, description: $description)';
}


}

/// @nodoc
abstract mixin class _$BondModelCopyWith<$Res> implements $BondModelCopyWith<$Res> {
  factory _$BondModelCopyWith(_BondModel value, $Res Function(_BondModel) _then) = __$BondModelCopyWithImpl;
@override @useResult
$Res call({
 String isin, String issuerName, String creditRating, String logoUrl, String status, String description
});




}
/// @nodoc
class __$BondModelCopyWithImpl<$Res>
    implements _$BondModelCopyWith<$Res> {
  __$BondModelCopyWithImpl(this._self, this._then);

  final _BondModel _self;
  final $Res Function(_BondModel) _then;

/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isin = null,Object? issuerName = null,Object? creditRating = null,Object? logoUrl = null,Object? status = null,Object? description = null,}) {
  return _then(_BondModel(
isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,issuerName: null == issuerName ? _self.issuerName : issuerName // ignore: cast_nullable_to_non_nullable
as String,creditRating: null == creditRating ? _self.creditRating : creditRating // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
