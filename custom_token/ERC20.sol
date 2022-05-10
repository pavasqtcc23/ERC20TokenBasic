// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
import "./SafeMath.sol";

//declaro una interface para los 
// metodos que son accesibles desde
// desde el exterior 
interface ERC20{
      //devuelve la cantidad de tokens en existencia 
      function totalSupply() external view returns (uint256);
      //devuelve la cantidad de tokens para la direccion indicada por parametro 
      function balanceOf(address account) external view returns (uint256);
      
      //devuelve el numero de tokens que el spender podra gastar en nombre del propietario(owner)
      function allowance(address owner ,address spender) external view returns (uint256);

      //devuelve un valor booleano en respuesa de si es posible hacer una transaccion

      function transfer(address recipient, uint256 amount) external returns (bool);

      //devuielve un valor booleano  si la rnsaccion se puede realizar o no 

      function approve(address spender,uint256 amount ) external returns (bool);

      //devuelve un valor booleano con el resultado de la operacion de paso de una cantidad de tokens usando
      //el metodo allowance

      function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);


}
 contract ERC20Basic is ERC20{

     function totalSupply() public override view returns(uint256){
         return 0;
     }
     function balanceOf(address account) public override view returns (uint256){
         return 0;
     }

     function allowance(address owner,address spender) public override view returns (uint256){
         return 0;
     }

     function transfer(address recipient, uint256 amount) public override  returns (bool){
         return false;
     }

      function approve(address spender,uint256 amount ) public override returns (bool){
        return  false;
      }


      function transferFrom(address sender, address recipient, uint256 amount) public override returns(bool){

      }

 }


