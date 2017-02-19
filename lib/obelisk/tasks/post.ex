defmodule Obelisk.Tasks.Post do
  
  @moduledoc """
  This task creates a new post with the given post title argument as part of the filename,
  and included in the front matter title

  ## Arguments

  * Post title

  ## Usage

      $ mix obelisk post "This one wierd trick"
  """

  @doc """
  Run the build task
  """
  def run({[], _options, _runtime_configuration}) do
    raise ArgumentError, message: "Cannot create a new post without the post name"
  end

  @doc """
  Run the build task
  """
  def run({[first_arg], _options, _runtime_configuration}) do
    first_arg |> Obelisk.Post.create
  end

  @doc """
  Run the build task
  """
  def run({[_first_arg|_rest], _options, _runtime_configuration}) do
    raise ArgumentError, message: "You should only provide one argument between \"\": your post name"
  end


end
