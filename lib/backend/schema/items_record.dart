import 'dart:async';


import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsRecord extends FirestoreRecord {
  
  ItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

    // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;


  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;


  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;


  // "barcode" field.
  String? _barcode;
  String get barcode => _barcode ?? '';
  bool hasBarcode() => _barcode != null;


  

    void _initializeFields() {
    _name = snapshotData['name'] as String?;
_price = castToType<double>(snapshotData['price']);
_quantity = castToType<int>(snapshotData['quantity']);
_barcode = snapshotData['barcode'] as String?;

  }


  static CollectionReference get collection =>
    FirebaseFirestore.instance.collection('items');


  static Stream<ItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsRecord.fromSnapshot(s));

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsRecord.fromSnapshot(s));

  static ItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsRecord._(reference, mapFromFirestore(data));

  

  @override
  String toString() => 'ItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsRecordData({String? name,double? price,int? quantity,String? barcode,}) {
  final firestoreData = mapToFirestore( <String, dynamic>{ 'name': name,'price': price,'quantity': quantity,'barcode': barcode, }.withoutNulls, );

  

  return firestoreData;
}
class ItemsRecordDocumentEquality implements Equality<ItemsRecord> {
  const ItemsRecordDocumentEquality();

  @override
  bool equals(ItemsRecord? e1, ItemsRecord? e2) {
    
    return e1?.name == e2?.name && e1?.price == e2?.price && e1?.quantity == e2?.quantity && e1?.barcode == e2?.barcode;
  }

  @override
  int hash(ItemsRecord? e) => const ListEquality().hash([e?.name, e?.price, e?.quantity, e?.barcode]);

  @override
  bool isValidKey(Object? o) => o is ItemsRecord;
}
