/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyBeans;

import javax.ejb.Stateless;

/**
 *
 * @author Admin
 */
@Stateless
public class CCBean {

  public CCBean(){}
  public double r2Dollar(double r)
  {
      return r/83.90;
  }
public double d2Rupees(double d)
{
    return d*83.90;
}
}
