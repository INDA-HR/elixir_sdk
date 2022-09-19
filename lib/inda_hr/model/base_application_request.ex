# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.BaseApplicationRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Data",
    :"HiringDetails"
  ]

  @type t :: %__MODULE__{
    :"Data" => inda_hr.Model.ApplicationCommonData.t | nil,
    :"HiringDetails" => inda_hr.Model.HiringDetails.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.BaseApplicationRequest do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Data", :struct, inda_hr.Model.ApplicationCommonData, options)
    |> deserialize(:"HiringDetails", :struct, inda_hr.Model.HiringDetails, options)
  end
end

