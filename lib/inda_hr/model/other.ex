# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Other do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Title",
    :"Date",
    :"Description",
    :"Link"
  ]

  @type t :: %__MODULE__{
    :"Title" => inda_hr.Model.Title.t | nil,
    :"Date" => inda_hr.Model.DateTime.t | nil,
    :"Description" => inda_hr.Model.Description.t | nil,
    :"Link" => inda_hr.Model.ResumeLinkLink.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Other do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Title", :struct, inda_hr.Model.Title, options)
    |> deserialize(:"Description", :struct, inda_hr.Model.Description, options)
    |> deserialize(:"Link", :struct, inda_hr.Model.ResumeLinkLink, options)
  end
end

