defmodule PersonalSite.JobsTest do
  use PersonalSite.DataCase

  alias PersonalSite.Jobs

  describe "jobs" do
    alias PersonalSite.Jobs.Job

    @valid_attrs %{blurb: "some blurb", company: "some company", end_date: ~D[2010-04-17], image_url: "some image_url", link: "some link", location: "some location", position: "some position", start_date: ~D[2010-04-17]}
    @update_attrs %{blurb: "some updated blurb", company: "some updated company", end_date: ~D[2011-05-18], image_url: "some updated image_url", link: "some updated link", location: "some updated location", position: "some updated position", start_date: ~D[2011-05-18]}
    @invalid_attrs %{blurb: nil, company: nil, end_date: nil, image_url: nil, link: nil, location: nil, position: nil, start_date: nil}

    def job_fixture(attrs \\ %{}) do
      {:ok, job} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Jobs.create_job()

      job
    end

    test "list_jobs/0 returns all jobs" do
      job = job_fixture()
      assert Jobs.list_jobs() == [job]
    end

    test "get_job!/1 returns the job with given id" do
      job = job_fixture()
      assert Jobs.get_job!(job.id) == job
    end

    test "create_job/1 with valid data creates a job" do
      assert {:ok, %Job{} = job} = Jobs.create_job(@valid_attrs)
      assert job.blurb == "some blurb"
      assert job.company == "some company"
      assert job.end_date == ~D[2010-04-17]
      assert job.image_url == "some image_url"
      assert job.link == "some link"
      assert job.location == "some location"
      assert job.position == "some position"
      assert job.start_date == ~D[2010-04-17]
    end

    test "create_job/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Jobs.create_job(@invalid_attrs)
    end

    test "update_job/2 with valid data updates the job" do
      job = job_fixture()
      assert {:ok, %Job{} = job} = Jobs.update_job(job, @update_attrs)
      assert job.blurb == "some updated blurb"
      assert job.company == "some updated company"
      assert job.end_date == ~D[2011-05-18]
      assert job.image_url == "some updated image_url"
      assert job.link == "some updated link"
      assert job.location == "some updated location"
      assert job.position == "some updated position"
      assert job.start_date == ~D[2011-05-18]
    end

    test "update_job/2 with invalid data returns error changeset" do
      job = job_fixture()
      assert {:error, %Ecto.Changeset{}} = Jobs.update_job(job, @invalid_attrs)
      assert job == Jobs.get_job!(job.id)
    end

    test "delete_job/1 deletes the job" do
      job = job_fixture()
      assert {:ok, %Job{}} = Jobs.delete_job(job)
      assert_raise Ecto.NoResultsError, fn -> Jobs.get_job!(job.id) end
    end

    test "change_job/1 returns a job changeset" do
      job = job_fixture()
      assert %Ecto.Changeset{} = Jobs.change_job(job)
    end
  end
end
