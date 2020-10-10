namespace test.cap;

using {managed, cuid} from '@sap/cds/common';
// @cds.persistence.skip
entity Books {
 key ID :String(40);
 Assignments: Association to many Assignments 
   on Assignments.book = $self;
 
}

entity Groups: managed {
  key ID : String(4);
  descr  : localized String(40);
  
}

entity Assignments  : managed {
  key Group:   Association to Groups;
  key book   : Association to Books;
}