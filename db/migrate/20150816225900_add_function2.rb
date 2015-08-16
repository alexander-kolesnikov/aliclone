class AddFunction2 < ActiveRecord::Migration
  def change
    execute <<-SQL
      CREATE OR REPLACE FUNCTION belongs_to(product_category_id integer, category_id integer) RETURNS boolean AS $$
        declare c integer;
        declare c1 integer;
        declare res boolean;
              BEGIN
                res = false;
                c := product_category_id;
                loop
                  EXIT WHEN c is NULL or res;
                  c1 := c;
                  res := c1=category_id;
                    select "categories".category_id into c from "categories" where "categories".id = c;
                  end loop;
          return res;
              END;
      $$ LANGUAGE plpgsql;
    SQL
  end
end







