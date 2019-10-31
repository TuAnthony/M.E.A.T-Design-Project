/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import React from 'react';
import { FlatList, ActivityIndicator, Text, View  } from 'react-native';

export default class FetchExample extends React.Component
{
    
    constructor(props){
        super(props);
        this.state ={ isLoading: true}
    }
    
    componentDidMount(){
        Linking.getInitialURL().then((file:///Users/abt25/Desktop/tcpip/wifi_demo_app/firmware/src/demo_app_webpages/forms.htm) => {
                                      if (file:///Users/abt25/Desktop/tcpip/wifi_demo_app/firmware/src/demo_app_webpages/forms.htm) {
                                          console.log('Initial url is: ' + file:///Users/abt25/Desktop/tcpip/wifi_demo_app/firmware/src/demo_app_webpages/forms.htm);
                                                      }
                                                      }).catch(err => console.error('An error occurred', err));
                                          }
                                          
                                          
                                          
                                          render(){
                                              
                                              if(this.state.isLoading){
                                                  return(
                                                         <View style={{flex: 1, padding: 20}}>
                                                         <ActivityIndicator/>
                                                         </View>
                                                         )
                                              }
                                              
                                              return(
                                                     <View style={{flex: 1, paddingTop:20}}>
                                                     <FlatList
                                                     data={this.state.dataSource}
                                                     renderItem={({item}) => <Text>{item.title}, {item.releaseYear}</Text>}
                                                     keyExtractor={({id}, index) => id}
                                                     />
                                                     </View>
                                                     );
                                          }
                                          }
