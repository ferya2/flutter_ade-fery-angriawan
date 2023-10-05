part of 'contact_bloc.dart';

@immutable
abstract class ContactState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ContactInitial extends ContactState {}

class ContactAdded extends ContactState {
  final List<ContactData> contacts;

  ContactAdded(this.contacts);

  @override
  List<Object?> get props => [contacts];
}

class ContactUpdated extends ContactState {
  final List<ContactData> contacts;

  ContactUpdated(this.contacts);

  @override
  List<Object?> get props => [contacts];
}

class ContactDeleted extends ContactState {
  final List<ContactData> contacts;

  ContactDeleted(this.contacts);

  @override
  List<Object?> get props => [contacts];
}

class ContactError extends ContactState {
  final String message;

  ContactError(this.message);

  @override
  List<Object?> get props => [message];
}
