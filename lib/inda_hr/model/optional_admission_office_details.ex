# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalAdmissionOfficeDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"AdditionalInfo"
  ]

  @type t :: %__MODULE__{
    :"AdditionalInfo" => [inda_hr.Model.UniversityContactsPhoneNumber.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalAdmissionOfficeDetails do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"AdditionalInfo", :list, inda_hr.Model.UniversityContactsPhoneNumber, options)
  end
end

