module DocusignTransactionRooms
  class FolderMapping
    include Kartograph::DSL

    kartograph do
      mapping Folder

      scoped :read do
        property :roomFolderId
        property :name
        property :isDefault
      end

      scoped :create, :update do
        property :name
      end

    end
  end
end
