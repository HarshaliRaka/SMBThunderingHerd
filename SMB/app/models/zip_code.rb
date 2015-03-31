class ZipCode
  attr_reader :state, :city, :area_code, :time_zone

  def self.initialize(zip)
    client  = Savon.client(wsdl: "http://www.webservicex.net/uszip.asmx?WSDL")
    response = client.request :web, :get_info_by_zip, body: { "USZip" => zip}
    data = response.to_hash[:get_info_by_zip_response][:get_info_by_zip_result][:new_data_set][:table]
    @state = data[:state]
    @city = data[:city]
    @area_code = data[:area_code]
    @time_zone = data[:time_zone]

  end

  def create
    return Zipcode.new
  end
end
