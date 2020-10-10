using test.cap as my from '../db/schema';
 
service BookGroup {
    entity Groups as projection on my.Groups
    entity Assignments as projection on my.Assignments
    entity Books as Projection on my.Books {
        *, Assignments: redirected to Assignments
    }
    
}