module apps.contacts;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.contacts.controllers;
  import apps.contacts.helpers;
  import apps.contacts.tests;
  import apps.contacts.views;
}

DApplication contactsApp;
static this() {
  contactsApp = Application
    .name("contactsApp")
    .rootPath("/apps/contacts")
    .addRoute(Route("/", HTTPMethod.GET, contactsIndexPageController));
}