import Book from '../Book/Book';
import About from '../About/About'
import './Home.scss';

export default function Home({ searchResults, show }) {
  //get libraries from db
  // const [libraries, setLibraries] = useState([]);
  // const [openModal, setOpenModal] = useState(false);

  // useEffect(() => {
  //   axios.get('http://localhost:8001/libraries')
  //     .then(response => {
  //       setLibraries(response.data);
  //     })
  //     .catch(err => {
  //       console.error(`Error fetching libraries: ${err}`);
  //     });
  // }, []);


  //map through db libraries displaying its books
  //we only want to map through the libraries IF someone is logged in - need to implement this functionality
  return (
    <div data-testid='Home'>
      <About show={show}/>
      <div className='home-container'>
        <div className="logo">
          <img src={process.env.PUBLIC_URL + "/listful_logo_graphic.png"}/>
        </div>
        {/* <Book searchResults={searchResults}/> */}
        <div className='home-hero'>
        <h1 className='heading'>Save all your favourite books in one spot</h1>
        <p>Organize your books, one list at a time with your Listful Library, a web app that collates your library in one easy location.</p>
        <button>Sign Up Now</button>
        </div>
        {/* {libraries.map((library) => (
          <ul key={library.id}>
            <li>
                <h2>{library.name}</h2>
            </li>
          </ul>
        ))}; */}
        {/* {openModal && (
          <Modal setOpenModal={setOpenModal}></Modal>
        )}
        {/* {isModalOpen && (
          <SearchResultModal
            SearchResults={setSearchResults}
            closeModal={() => setIsModalOpen(false)}
          />
        )} */}
      </div>
    </div>
  )
};
