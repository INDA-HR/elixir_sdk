# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.GetJobAdResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Data",
    :"Metadata",
    :"ID"
  ]

  @type t :: %__MODULE__{
    :"Data" => inda_hr.Model.JobadCommonData.t,
    :"Metadata" => inda_hr.Model.JobadCommonPublicMetadata.t,
    :"ID" => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.GetJobAdResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Data", :struct, inda_hr.Model.JobadCommonData, options)
    |> deserialize(:"Metadata", :struct, inda_hr.Model.JobadCommonPublicMetadata, options)
  end
end

