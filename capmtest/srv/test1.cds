using { mymngt as my} from '../db/schema';

service myproject {
    entity books as projection on my.books;
    entity employee as projection on  my.employee;

}
