# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.PersonLocation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"CurrentLocation",
    :"PermanentLocation"
  ]

  @type t :: %__MODULE__{
    :"CurrentLocation" => inda_hr.Model.ResumeLocationsLocation.t | nil,
    :"PermanentLocation" => inda_hr.Model.ResumeLocationsLocation.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.PersonLocation do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"CurrentLocation", :struct, inda_hr.Model.ResumeLocationsLocation, options)
    |> deserialize(:"PermanentLocation", :struct, inda_hr.Model.ResumeLocationsLocation, options)
  end
end

