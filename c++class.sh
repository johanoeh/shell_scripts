UPPER=${1^^}
DATE=`date +%Y-%m-%d`

echo "#ifndef ${UPPER}_H
#define ${UPPER}_H
/**
 * @author $USER
 * created $DATE
 * Last edited :
 */
class $1 {

public: 

  ${1}();
  ${1}(const ${1}& orig);
  virtual ~${1}();

private:

};

#endif /*${UPPER}_H*/
" > ${1}.h
echo "/**
 *
 * @author $USER
 * created :$DATE
 * Last edited :
 */

#include \"${1}.h\"

${1}::${1}(){

}

${1}::${1}(const ${1}& orig){

}

${1}::~${1}(){} " > ${1}.cpp

