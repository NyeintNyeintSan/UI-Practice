// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final DateTime dateOfBirth;
  final String address;
  final String phone;
  final bool gender;
  final String job;
  final String hairColor;
  final String profilePicture;
  final String height;
  final String weight;
  final String skinColor;
  User(
      {@required this.id,
      @required this.name,
      this.dateOfBirth,
      @required this.address,
      @required this.phone,
      this.gender,
      @required this.job,
      @required this.hairColor,
      @required this.profilePicture,
      @required this.height,
      @required this.weight,
      @required this.skinColor});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return User(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      dateOfBirth: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}date_of_birth']),
      address:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}address']),
      phone:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      gender:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}gender']),
      job: stringType.mapFromDatabaseResponse(data['${effectivePrefix}job']),
      hairColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}hair_color']),
      profilePicture: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_picture']),
      height:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}height']),
      weight:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}weight']),
      skinColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}skin_color']),
    );
  }
  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      dateOfBirth: serializer.fromJson<DateTime>(json['dateOfBirth']),
      address: serializer.fromJson<String>(json['address']),
      phone: serializer.fromJson<String>(json['phone']),
      gender: serializer.fromJson<bool>(json['gender']),
      job: serializer.fromJson<String>(json['job']),
      hairColor: serializer.fromJson<String>(json['hairColor']),
      profilePicture: serializer.fromJson<String>(json['profilePicture']),
      height: serializer.fromJson<String>(json['height']),
      weight: serializer.fromJson<String>(json['weight']),
      skinColor: serializer.fromJson<String>(json['skinColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'dateOfBirth': serializer.toJson<DateTime>(dateOfBirth),
      'address': serializer.toJson<String>(address),
      'phone': serializer.toJson<String>(phone),
      'gender': serializer.toJson<bool>(gender),
      'job': serializer.toJson<String>(job),
      'hairColor': serializer.toJson<String>(hairColor),
      'profilePicture': serializer.toJson<String>(profilePicture),
      'height': serializer.toJson<String>(height),
      'weight': serializer.toJson<String>(weight),
      'skinColor': serializer.toJson<String>(skinColor),
    };
  }

  @override
  UsersCompanion createCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      dateOfBirth: dateOfBirth == null && nullToAbsent
          ? const Value.absent()
          : Value(dateOfBirth),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      job: job == null && nullToAbsent ? const Value.absent() : Value(job),
      hairColor: hairColor == null && nullToAbsent
          ? const Value.absent()
          : Value(hairColor),
      profilePicture: profilePicture == null && nullToAbsent
          ? const Value.absent()
          : Value(profilePicture),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      skinColor: skinColor == null && nullToAbsent
          ? const Value.absent()
          : Value(skinColor),
    );
  }

  User copyWith(
          {int id,
          String name,
          DateTime dateOfBirth,
          String address,
          String phone,
          bool gender,
          String job,
          String hairColor,
          String profilePicture,
          String height,
          String weight,
          String skinColor}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        gender: gender ?? this.gender,
        job: job ?? this.job,
        hairColor: hairColor ?? this.hairColor,
        profilePicture: profilePicture ?? this.profilePicture,
        height: height ?? this.height,
        weight: weight ?? this.weight,
        skinColor: skinColor ?? this.skinColor,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('address: $address, ')
          ..write('phone: $phone, ')
          ..write('gender: $gender, ')
          ..write('job: $job, ')
          ..write('hairColor: $hairColor, ')
          ..write('profilePicture: $profilePicture, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('skinColor: $skinColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              dateOfBirth.hashCode,
              $mrjc(
                  address.hashCode,
                  $mrjc(
                      phone.hashCode,
                      $mrjc(
                          gender.hashCode,
                          $mrjc(
                              job.hashCode,
                              $mrjc(
                                  hairColor.hashCode,
                                  $mrjc(
                                      profilePicture.hashCode,
                                      $mrjc(
                                          height.hashCode,
                                          $mrjc(weight.hashCode,
                                              skinColor.hashCode))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.dateOfBirth == this.dateOfBirth &&
          other.address == this.address &&
          other.phone == this.phone &&
          other.gender == this.gender &&
          other.job == this.job &&
          other.hairColor == this.hairColor &&
          other.profilePicture == this.profilePicture &&
          other.height == this.height &&
          other.weight == this.weight &&
          other.skinColor == this.skinColor);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<DateTime> dateOfBirth;
  final Value<String> address;
  final Value<String> phone;
  final Value<bool> gender;
  final Value<String> job;
  final Value<String> hairColor;
  final Value<String> profilePicture;
  final Value<String> height;
  final Value<String> weight;
  final Value<String> skinColor;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.address = const Value.absent(),
    this.phone = const Value.absent(),
    this.gender = const Value.absent(),
    this.job = const Value.absent(),
    this.hairColor = const Value.absent(),
    this.profilePicture = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.skinColor = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    this.dateOfBirth = const Value.absent(),
    @required String address,
    @required String phone,
    this.gender = const Value.absent(),
    @required String job,
    @required String hairColor,
    @required String profilePicture,
    @required String height,
    @required String weight,
    @required String skinColor,
  })  : name = Value(name),
        address = Value(address),
        phone = Value(phone),
        job = Value(job),
        hairColor = Value(hairColor),
        profilePicture = Value(profilePicture),
        height = Value(height),
        weight = Value(weight),
        skinColor = Value(skinColor);
  UsersCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<DateTime> dateOfBirth,
      Value<String> address,
      Value<String> phone,
      Value<bool> gender,
      Value<String> job,
      Value<String> hairColor,
      Value<String> profilePicture,
      Value<String> height,
      Value<String> weight,
      Value<String> skinColor}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      gender: gender ?? this.gender,
      job: job ?? this.job,
      hairColor: hairColor ?? this.hairColor,
      profilePicture: profilePicture ?? this.profilePicture,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      skinColor: skinColor ?? this.skinColor,
    );
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 255);
  }

  final VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  GeneratedDateTimeColumn _dateOfBirth;
  @override
  GeneratedDateTimeColumn get dateOfBirth =>
      _dateOfBirth ??= _constructDateOfBirth();
  GeneratedDateTimeColumn _constructDateOfBirth() {
    return GeneratedDateTimeColumn(
      'date_of_birth',
      $tableName,
      true,
    );
  }

  final VerificationMeta _addressMeta = const VerificationMeta('address');
  GeneratedTextColumn _address;
  @override
  GeneratedTextColumn get address => _address ??= _constructAddress();
  GeneratedTextColumn _constructAddress() {
    return GeneratedTextColumn('address', $tableName, false,
        minTextLength: 10, maxTextLength: 255);
  }

  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  GeneratedTextColumn _phone;
  @override
  GeneratedTextColumn get phone => _phone ??= _constructPhone();
  GeneratedTextColumn _constructPhone() {
    return GeneratedTextColumn('phone', $tableName, false,
        minTextLength: 5, maxTextLength: 12);
  }

  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  GeneratedBoolColumn _gender;
  @override
  GeneratedBoolColumn get gender => _gender ??= _constructGender();
  GeneratedBoolColumn _constructGender() {
    return GeneratedBoolColumn(
      'gender',
      $tableName,
      true,
    );
  }

  final VerificationMeta _jobMeta = const VerificationMeta('job');
  GeneratedTextColumn _job;
  @override
  GeneratedTextColumn get job => _job ??= _constructJob();
  GeneratedTextColumn _constructJob() {
    return GeneratedTextColumn('job', $tableName, false,
        minTextLength: 3, maxTextLength: 255);
  }

  final VerificationMeta _hairColorMeta = const VerificationMeta('hairColor');
  GeneratedTextColumn _hairColor;
  @override
  GeneratedTextColumn get hairColor => _hairColor ??= _constructHairColor();
  GeneratedTextColumn _constructHairColor() {
    return GeneratedTextColumn(
      'hair_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _profilePictureMeta =
      const VerificationMeta('profilePicture');
  GeneratedTextColumn _profilePicture;
  @override
  GeneratedTextColumn get profilePicture =>
      _profilePicture ??= _constructProfilePicture();
  GeneratedTextColumn _constructProfilePicture() {
    return GeneratedTextColumn(
      'profile_picture',
      $tableName,
      false,
    );
  }

  final VerificationMeta _heightMeta = const VerificationMeta('height');
  GeneratedTextColumn _height;
  @override
  GeneratedTextColumn get height => _height ??= _constructHeight();
  GeneratedTextColumn _constructHeight() {
    return GeneratedTextColumn(
      'height',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weightMeta = const VerificationMeta('weight');
  GeneratedTextColumn _weight;
  @override
  GeneratedTextColumn get weight => _weight ??= _constructWeight();
  GeneratedTextColumn _constructWeight() {
    return GeneratedTextColumn(
      'weight',
      $tableName,
      false,
    );
  }

  final VerificationMeta _skinColorMeta = const VerificationMeta('skinColor');
  GeneratedTextColumn _skinColor;
  @override
  GeneratedTextColumn get skinColor => _skinColor ??= _constructSkinColor();
  GeneratedTextColumn _constructSkinColor() {
    return GeneratedTextColumn(
      'skin_color',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        dateOfBirth,
        address,
        phone,
        gender,
        job,
        hairColor,
        profilePicture,
        height,
        weight,
        skinColor
      ];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(UsersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.dateOfBirth.present) {
      context.handle(_dateOfBirthMeta,
          dateOfBirth.isAcceptableValue(d.dateOfBirth.value, _dateOfBirthMeta));
    }
    if (d.address.present) {
      context.handle(_addressMeta,
          address.isAcceptableValue(d.address.value, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (d.phone.present) {
      context.handle(
          _phoneMeta, phone.isAcceptableValue(d.phone.value, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (d.gender.present) {
      context.handle(
          _genderMeta, gender.isAcceptableValue(d.gender.value, _genderMeta));
    }
    if (d.job.present) {
      context.handle(_jobMeta, job.isAcceptableValue(d.job.value, _jobMeta));
    } else if (isInserting) {
      context.missing(_jobMeta);
    }
    if (d.hairColor.present) {
      context.handle(_hairColorMeta,
          hairColor.isAcceptableValue(d.hairColor.value, _hairColorMeta));
    } else if (isInserting) {
      context.missing(_hairColorMeta);
    }
    if (d.profilePicture.present) {
      context.handle(
          _profilePictureMeta,
          profilePicture.isAcceptableValue(
              d.profilePicture.value, _profilePictureMeta));
    } else if (isInserting) {
      context.missing(_profilePictureMeta);
    }
    if (d.height.present) {
      context.handle(
          _heightMeta, height.isAcceptableValue(d.height.value, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (d.weight.present) {
      context.handle(
          _weightMeta, weight.isAcceptableValue(d.weight.value, _weightMeta));
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (d.skinColor.present) {
      context.handle(_skinColorMeta,
          skinColor.isAcceptableValue(d.skinColor.value, _skinColorMeta));
    } else if (isInserting) {
      context.missing(_skinColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UsersCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.dateOfBirth.present) {
      map['date_of_birth'] =
          Variable<DateTime, DateTimeType>(d.dateOfBirth.value);
    }
    if (d.address.present) {
      map['address'] = Variable<String, StringType>(d.address.value);
    }
    if (d.phone.present) {
      map['phone'] = Variable<String, StringType>(d.phone.value);
    }
    if (d.gender.present) {
      map['gender'] = Variable<bool, BoolType>(d.gender.value);
    }
    if (d.job.present) {
      map['job'] = Variable<String, StringType>(d.job.value);
    }
    if (d.hairColor.present) {
      map['hair_color'] = Variable<String, StringType>(d.hairColor.value);
    }
    if (d.profilePicture.present) {
      map['profile_picture'] =
          Variable<String, StringType>(d.profilePicture.value);
    }
    if (d.height.present) {
      map['height'] = Variable<String, StringType>(d.height.value);
    }
    if (d.weight.present) {
      map['weight'] = Variable<String, StringType>(d.weight.value);
    }
    if (d.skinColor.present) {
      map['skin_color'] = Variable<String, StringType>(d.skinColor.value);
    }
    return map;
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as AppDb);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];
}
