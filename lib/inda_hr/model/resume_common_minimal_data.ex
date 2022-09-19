# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ResumeCommonMinimalData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"JobTitle",
    :"PersonalInfo",
    :"ContactInfo",
    :"PersonLocation"
  ]

  @type t :: %__MODULE__{
    :"JobTitle" => inda_hr.Model.ResumeJobTitle.t | nil,
    :"PersonalInfo" => inda_hr.Model.PersonalInfo.t | nil,
    :"ContactInfo" => inda_hr.Model.ResumeContactInfoContactInfo.t | nil,
    :"PersonLocation" => inda_hr.Model.PersonLocation.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ResumeCommonMinimalData do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"JobTitle", :struct, inda_hr.Model.ResumeJobTitle, options)
    |> deserialize(:"PersonalInfo", :struct, inda_hr.Model.PersonalInfo, options)
    |> deserialize(:"ContactInfo", :struct, inda_hr.Model.ResumeContactInfoContactInfo, options)
    |> deserialize(:"PersonLocation", :struct, inda_hr.Model.PersonLocation, options)
  end
end
