# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.Publisher do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Category,
    :Link
  ]

  @type t :: %__MODULE__{
    :Name => IndaHr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :Category => IndaHr.Model.BaseBenefitsValueModelStrictStr.t | nil,
    :Link => IndaHr.Model.JobadLinkLink.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.Publisher do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Name, :struct, IndaHr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:Category, :struct, IndaHr.Model.BaseBenefitsValueModelStrictStr, options)
    |> deserialize(:Link, :struct, IndaHr.Model.JobadLinkLink, options)
  end
end
