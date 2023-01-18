# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.Publisher do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Category,
    :Link
  ]

  @type t :: %__MODULE__{
    :Name => inda_hr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :Category => inda_hr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :Link => inda_hr.Model.JobadLinkLink.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Publisher do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Name, :struct, inda_hr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:Category, :struct, inda_hr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:Link, :struct, inda_hr.Model.JobadLinkLink, options)
  end
end

