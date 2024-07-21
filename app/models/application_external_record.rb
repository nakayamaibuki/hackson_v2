class ApplicationExternalRecord < ApplicationRecord::Base
    # 抽象クラスとして設定
    self.abstract_class = true

    # 外部DBを使用するように設定(database.yml内の記述と対応)
    establish_connection :extend_db

    def self.execute_sql sql
        begin
          result = connection.select_all(sql)
        rescue => e
          raise e.message
        end
        return result
    end

end
