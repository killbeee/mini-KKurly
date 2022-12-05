/*
 * import java.io.IOException; import java.util.ArrayList; import
 * java.util.List;
 * 
 * import javax.servlet.http.HttpServletRequest;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestParam; import
 * org.springframework.web.multipart.MultipartFile;
 * 
 * import com.ezen.springboard.VO.CateVO; import
 * com.ezen.springboard.VO.ProdFileVO; import
 * com.ezen.springboard.service.cate.CateService;
 * 
 * @Controller
 * 
 * @RequestMapping("/cate") public class CateController {
 * 
 * @Autowired private CateService cateService;
 * 
 * 
 * //카테고리 목록 조회(상위)
 * 
 * @RequestMapping("/getCateList.do") public
 * 
 * 
 * 
 * //카테고리 상세 조회(하위)
 * 
 * @RequestMapping("/getCate.do") public String getCate(@RequestParam("prodNo")
 * int prodNo, Model model) {
 * 
 * }
 * 
 * 
 * 
 * //카테고리 추가(상위 카테고리에 하위 카테고리 추가되는 것)
 * 
 * @PostMapping("/prodInsert.do") public String insertCate(CateVO cateVO,
 * MultipartFile[] uploadFiles, HttpServletRequest request) throws IOException {
 * List<ProdFileVO> fileList = new ArrayList<ProdFileVO>(); }
 * 
 * }
 * 
 * 
 * 
 * 
 */