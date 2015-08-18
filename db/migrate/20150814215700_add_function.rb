class AddFunction < ActiveRecord::Migration
  def change
    execute <<-SQL
      CREATE OR REPLACE FUNCTION get_root_category(i integer) RETURNS integer AS $$
        declare c integer;
        declare c1 integer;
              BEGIN
                c := i;
                loop
                  EXIT WHEN c is NULL;
                  c1 := c;
                    select "categories".category_id into c from "categories" where "categories".id = c;
                  end loop;
                  RETURN c1;
              END;
      $$ LANGUAGE plpgsql;
    SQL
  end
end


