# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.GetApplicationResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Data,
    :HiringDetails,
    :ResumeID,
    :JobAdID,
    :Metadata
  ]

  @type t :: %__MODULE__{
    :Data => inda_hr.Model.ApplicationCommonData.t | nil,
    :HiringDetails => inda_hr.Model.HiringDetails.t | nil,
    :ResumeID => String.t,
    :JobAdID => inda_hr.Model.Jobadid.t,
    :Metadata => inda_hr.Model.PublicMetadataModel.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.GetApplicationResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Data, :struct, inda_hr.Model.ApplicationCommonData, options)
    |> deserialize(:HiringDetails, :struct, inda_hr.Model.HiringDetails, options)
    |> deserialize(:JobAdID, :struct, inda_hr.Model.Jobadid, options)
    |> deserialize(:Metadata, :struct, inda_hr.Model.PublicMetadataModel, options)
  end
end

