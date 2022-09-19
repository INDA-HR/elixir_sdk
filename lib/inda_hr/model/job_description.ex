# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.JobDescription do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"CompanyDescription",
    :"PositionDescription",
    :"PositionRequirements",
    :"AdditionalInformation"
  ]

  @type t :: %__MODULE__{
    :"CompanyDescription" => inda_hr.Model.Section.t | nil,
    :"PositionDescription" => inda_hr.Model.Section.t,
    :"PositionRequirements" => inda_hr.Model.Section.t | nil,
    :"AdditionalInformation" => inda_hr.Model.Section.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobDescription do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"CompanyDescription", :struct, inda_hr.Model.Section, options)
    |> deserialize(:"PositionDescription", :struct, inda_hr.Model.Section, options)
    |> deserialize(:"PositionRequirements", :struct, inda_hr.Model.Section, options)
    |> deserialize(:"AdditionalInformation", :struct, inda_hr.Model.Section, options)
  end
end

