# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.Patent do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :PatentTitle,
    :PatentID,
    :PatentStatus,
    :Description,
    :InventorNames,
    :IssuingAuthority
  ]

  @type t :: %__MODULE__{
    :PatentTitle => inda_hr.Model.Title.t | nil,
    :PatentID => inda_hr.Model.Text.t | nil,
    :PatentStatus => inda_hr.Model.PatentStatus.t | nil,
    :Description => inda_hr.Model.Description.t | nil,
    :InventorNames => [inda_hr.Model.ResumePersonNamePersonName.t] | nil,
    :IssuingAuthority => inda_hr.Model.Organization.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Patent do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:PatentTitle, :struct, inda_hr.Model.Title, options)
    |> deserialize(:PatentID, :struct, inda_hr.Model.Text, options)
    |> deserialize(:PatentStatus, :struct, inda_hr.Model.PatentStatus, options)
    |> deserialize(:Description, :struct, inda_hr.Model.Description, options)
    |> deserialize(:InventorNames, :list, inda_hr.Model.ResumePersonNamePersonName, options)
    |> deserialize(:IssuingAuthority, :struct, inda_hr.Model.Organization, options)
  end
end

