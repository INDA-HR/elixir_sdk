# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.JobadCommonAttachments do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :JobDescription
  ]

  @type t :: %__MODULE__{
    :JobDescription => inda_hr.Model.Attachment.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobadCommonAttachments do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:JobDescription, :struct, inda_hr.Model.Attachment, options)
  end
end

