import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Transaction {
  final IconData icon;
  final String id;
  final String name;
  final String bankName;
  final String billType;
  final double amount;

  Transaction(
      {required this.icon,
      required this.name,
      required this.bankName,
      required this.billType,
      required this.amount})
      : id = uuid.v4();
}
