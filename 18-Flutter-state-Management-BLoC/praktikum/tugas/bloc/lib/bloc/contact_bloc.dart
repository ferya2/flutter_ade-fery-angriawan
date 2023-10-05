import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../models/contact_data.dart';
import 'contact_event.dart';

part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial());

  List<ContactData> contacts = []; // List kontak Anda

  @override
  Stream<ContactState> mapEventToState(ContactEvent event) async* {
    if (event is AddContact) {
      // Proses logika untuk menambahkan kontak ke dalam list
      contacts.add(event.newContact);
      yield ContactAdded(contacts); 
    } else if (event is UpdateContact) {
      
      contacts[event.index] = event.updatedContact;
      yield ContactUpdated(contacts); 
    } else if (event is DeleteContact) {
      
      contacts.removeAt(event.index);
      yield ContactDeleted(contacts); 
    }
  }
}
