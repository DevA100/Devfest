import logo from "./logo.svg";
import "./App.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faUsers, faArrowRight } from "@fortawesome/free-solid-svg-icons";
import Icon from "@mdi/react";
import {
  mdiAccountGroup,
  mdiHumanMale,
  mdiHumanFemale,
  mdiChevronLeft,
  mdiChevronRight,
  mdiArrowLeft,
  mdiPhoneInTalkOutline,
  mdiEmailOutline,
} from "@mdi/js";
import { useEffect, useState } from "react";

import { Button, Grid } from "@mui/material";

function App() {
  const [users, setUsers] = useState([]);
  const [data, setData] = useState([]);
  const [filtered, setFiltered] = useState([]);
  const [showCountry, setShowCountry] = useState(false);
  const [page, setPage] = useState(1);
  const [filter, setFilter] = useState({
    gender: "",
    search: "",
    selected: null,
  });
  useEffect(() => {
    fetch(`https://randomuser.me/api/?results=100`)
      .then((res) => res.json())
      .then((res) => {
        console.log(res);
        setData(res.results);
      });
  }, []);

  useEffect(() => {
    let filterSearch = "";
    if (filter.gender) {
      filterSearch = "&gender=" + filter.gender;
    } else {
      filterSearch = "&seed=abc";
    }

    fetch(`https://randomuser.me/api/?results=3&page=${page}${filterSearch}`)
      .then((res) => res.json())
      .then((res) => {
        console.log(res);
        setUsers(res.results);
        setFiltered(res.results);
      });
  }, [page, filter.gender]);

  const pageBack = () => {
    if (page == 1) return;
    setPage(page - 1);
  };
  const pageForward = () => {
    setPage(page + 1);
  };

  const handleSearch = (e) => {
    const search = e.target.value.toLowerCase();
    setFilter({ ...filter, search: search });
    if (!search) {
      setFiltered(users);
      return;
    }

    const newList = users.filter(
      (user) =>
        user.name.first.toLowerCase().indexOf(search) > -1 ||
        user.name.last.toLowerCase().indexOf(search) > -1
    );

    console.log(newList);

    setFiltered(newList);
  };

  const selectedUser = filter.selected;
  const search = filter.search;

  const setGenderMale = () => {
    setFilter({ ...filter, gender: "male" });
    setPage(1);
  };

  const setGenderFemale = () => {
    setFilter({ ...filter, gender: "female" });
    setPage(1);
  };

  const clearGender = () => {
    setFilter({ ...filter, gender: "" });
    setPage(1);
  };

  const clearSelected = () => {
    setFilter({ ...filter, selected: null });
    setPage(1);
  };

  const download = () => {
    fetch(
      `https://randomuser.me/api/?results=10&inc=name,gender,nat&format=csv&noinfo`
    )
      .then((res) => res.blob())
      .then((blob) => {
        var file = window.URL.createObjectURL(blob);
        window.location.assign(file);
      });
  };

  return (
    <>
      <section className="main">
        <Grid container spacing={2}>
          <Grid item lg={6} xs={12} sm={12}>
            <div className="right-side">
              <p className="greeting">
                Hello, <span className="username">Emerald</span>
              </p>
              <p className="subtitle">
                Welcome to your dashboard, kindly sort through the user base
              </p>
              <div className="find">
                <i className="fa fa-search"></i>
                <input
                  type="text"
                  onChange={handleSearch}
                  value={search}
                  className="searchinput"
                  placeholder="Find a user"
                />
              </div>
              <p className="show-title">Show Users</p>
              <div className="btn-group">
                <div className="user-btn">
                  <button className="pink" onClick={clearGender}>
                    <Icon
                      path={mdiAccountGroup}
                      title="User Profile"
                      size={1}
                      horizontal
                      vertical
                      rotate
                      color="white"
                    />
                  </button>
                  <p className="subtitle-btn">All Users</p>
                </div>
                <div className="user-btn">
                  <button className="green" onClick={setGenderMale}>
                    <Icon
                      path={mdiHumanMale}
                      title="User Profile"
                      size={1}
                      horizontal
                      vertical
                      rotate
                      color="white"
                    />
                  </button>
                  <p className="subtitle-btn">Male Users</p>
                </div>
                <div className="user-btn">
                  <button className="purple" onClick={setGenderFemale}>
                    <Icon
                      path={mdiHumanFemale}
                      title="User Profile"
                      size={1}
                      horizontal
                      vertical
                      rotate
                      color="white"
                    />
                  </button>
                  <p className="subtitle-btn">Female Users</p>
                </div>
              </div>
            </div>
          </Grid>
          <Grid item lg={6} xs={12} sm={12}>
            <div className="left-side">
              <h1>Users</h1>
              <p className="filter-title">Filter by</p>
              <div className="search-filter">
                <div className="search-box">
                  <input
                    type="text"
                    placeholder="Find in list"
                    value={search}
                    onChange={handleSearch}
                    id="search"
                    name="search"
                  />
                </div>
                <select name="countrys" id="countrys" className="country">
                  {data &&
                    data.map((item) => {
                      return <option>{item.location.country}</option>;
                    })}
                </select>
            
                <input type="checkbox" hidden="hidden" id="check" />
                <label
                  className="switch"
                  htmlFor="check"
                  style={{ cursor: "auto" }}
                ></label>
              </div>

              {selectedUser === null ? (
                <div className="user-list-wrapper">
                  {filtered && filtered.length
                    ? filtered.map((user) => (
                        <div class="user-list">
                          <div class="user-list-box">
                            <div class="user-list-img">
                              <img src={user.picture.medium} alt="" srcset="" />
                            </div>
                            <div class="user-details">
                              <h4>
                                {user.name.first} {user.name.last}
                              </h4>
                              <p class="address">
                                {user.location.street.number},{" "}
                                {user.location.city},{user.location.state} ,
                                {user.location.country}
                              </p>
                              <div class="user-mail">
                                <Icon
                                  path={mdiEmailOutline}
                                  size={1}
                                  color="grey"
                                />
                                <p>{user.email}</p>
                                <Icon
                                  path={mdiPhoneInTalkOutline}
                                  size={1}
                                  color="grey"
                                />
                                <p>{user.phone}</p>
                              </div>
                            </div>
                            <div class="user-view-btn">
                              <button
                                onClick={() =>
                                  setFilter({ ...filter, selected: user })
                                }
                              >
                                <FontAwesomeIcon icon={faArrowRight} />
                              </button>
                            </div>
                          </div>
                        </div>
                      ))
                    : null}
                </div>
              ) : (
                <div>
                  <div class="user-detail-contain animate__animated animate__fadeInUp">
                    <Button
                      onClick={clearSelected}
                      startIcon={
                        <Icon path={mdiArrowLeft} size={1} color="#75d6d1" />
                      }
                    >
                      <span style={{ color: "grey", fontWeight: "400" }}>
                        RESULTS
                      </span>
                    </Button>
                    <div class="user-detail">
                      <div class="user-detail-img">
                        <img
                          src={selectedUser.picture.large}
                          alt=""
                          srcset=""
                        />
                      </div>
                      <div class="detail">
                        <p class="detail-name">
                          Miss {selectedUser.name.first} Chukwuka
                          <span class="age">1922-19-23</span>
                        </p>
                        <p class="detail-phone">083283</p>
                        <div class="add-email">
                          <i class="fa fa-envelope"></i>
                          <p>chidinma@gmail.com</p>
                        </div>
                        <div class="add-date">
                          <p>
                            <span>JOINED:</span>
                            32oi2n3o
                          </p>
                        </div>
                        <div class="user-detail-mail">
                          <div class="user-detail-first">
                            <i class="fa fa-phone"></i>
                            <p>232323</p>
                          </div>
                          <div class="user-detail-first">
                            <i class="fa fa-phone"></i>
                            <p>232323</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              )}

              <div class="download-section">
                <button
                  class="download"
                  onClick={download}
                  type="button"
                  disabled={selectedUser}
                >
                  <i class="fa fa-cloud-download"></i>
                  <p>Download results</p>
                </button>
                <a id="link" href="file.csv"></a>
                <div class="pagination">
                  <button
                    class="left"
                    type="button"
                    onClick={pageBack}
                    disabled={selectedUser}
                  >
                    <Icon path={mdiChevronLeft} size={1} color="white" />
                  </button>
                  <button class="right" type="button">
                    <Icon
                      path={mdiChevronRight}
                      size={1}
                      color="white"
                      onClick={pageForward}
                    />
                  </button>
                </div>
              </div>
            </div>
          </Grid>
        </Grid>
      </section>
    </>
  );
}

export default App;
