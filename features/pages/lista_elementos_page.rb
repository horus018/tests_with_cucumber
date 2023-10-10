class ListaElementosPage < SitePrism::Page
  set_url '/customers'

  #pra varios elementos usa elements
  # pra um só usa element
  elements :header_lista, 'tr > th'
  elements :all_elements_from_datatable, 'tr > td'
end