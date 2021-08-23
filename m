Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D733F50BE
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Aug 2021 20:50:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mIF1a-0001oc-2i; Mon, 23 Aug 2021 18:50:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dave.kleikamp@oracle.com>) id 1mIF1Y-0001oU-E5
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 18:50:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zETFEm9BYPdEdRvKwFFBAxI1hVKcBQofcwBbnEXMXIE=; b=BokCfEwy5fX2RbfsCQ61OxLG1d
 PMK/f9hspd39MJ9rLEZZU7wuh6SDETCnGjlvcFrf5E6qmsC3R9valeFJkpro/b1m19cktxgfKSLqp
 ri0Tp/KdVEP3CUt9lxOl+s/U5VYT2Kh6O3mow8aBjxjbvdLKqQwOEkCDO1BNVu0kcyHs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zETFEm9BYPdEdRvKwFFBAxI1hVKcBQofcwBbnEXMXIE=; b=T8cCdalziMAFQ1wPIUVx0XhEP/
 euKW8SETl/HcOVks1fDaxiHXpVeWZfXRwE/fDZaHh3W27mD1QNxmPcVYKhLEMHtUlmvy/hXnSOrhT
 ulniqXN3t9hV6ql4B0ngPkV+0qrCJurlxQO0dwqiXeahe4zIZ1KZKFu4Wxno42TpsInk=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIF1W-00G4Q2-IO
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 18:50:20 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17NHIUUr008493;
 Mon, 23 Aug 2021 18:50:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=zETFEm9BYPdEdRvKwFFBAxI1hVKcBQofcwBbnEXMXIE=;
 b=QAsYDiHvdRajVkoKr0HhVoS2yiUBAp4erIyBIl7Hn0T7f26VsU0JmYADRAM2GpjUqPMk
 5fj0vdPlc0+oR+ZYvVvLIs0GXghXXgHEFY9dPBFjjc21wvbJwyTS3UEB8FW45uC2v0Tu
 WTfXKgs+Zc5TPEJNTh8iNkdD3BBgBQqlT0VpM8yK7ChkmYjvlWcedLX3ufEjMK1j+usl
 pY+CC7TV+OWNrUbhItMP4l7cUE+pQgUedjdDUmG3mqK9drirL5L56VOQpEaxzxsB2HL3
 EuGzrhY97vDzTOa7LkO5v20QQBw9S32O+nvdo4TwwQa70J2WkqnVDjyx8aVSHE/IQG3o Pg== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=zETFEm9BYPdEdRvKwFFBAxI1hVKcBQofcwBbnEXMXIE=;
 b=DUWo4BCHfwh5bKu3Icvl38EuxEpTPT+nQJLXvjpm5egflOGQ0BnKfBuIXV5CVoGv7/+b
 8pFYv1Ik+nRFH7mzOrBHASaeixfMxFMovFVf8EX1HOaiCI0CWVEHfSyXObCzH0vt5rGb
 /nDIGBDoWYjdZ2M36agFhnJjUxuXhLNitvMo9AFCoE4ub7BT1+mtKfMAEMfPIUwBO6XU
 s3Kx7aTbukp4BSjJ7c4MuWP1Czvty7lVKkTD/20eJmJLcfeFnoErV1MSPsZzGnx399nE
 kAoa1ApqX+PLRdgzJMnU3V37xOhBwJ/qaJShEEgK5g8ufiSQIPufAJ6NwVQqICKreKf6 hA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3akwcfab4j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Aug 2021 18:50:10 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17NIjCTF189756;
 Mon, 23 Aug 2021 18:50:09 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
 by aserp3020.oracle.com with ESMTP id 3ajsa3u62n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Aug 2021 18:50:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bQoZyhATZdokmAGDxXmilV+iaXIqJr+kk0PDNRxNNuJc7ol3GKDTc42MDEdOR071yu4VUM63qgMW9DNq/RiZPsNiBicievEpLpFU+vYaSN4LP4Xm3p5WK3JW5XnVdpLou/VQGX63GvVWCkeP8+9l4KtTURHJptWrGJDaoyh9ZclfYH+ZnD/npEnsHW1Iyw9T43zI2pyxLKl275xiVR93p+JYBh8fCttVnhi9V/LuGZGei0bFpfBEKah68azcBANlzI0SET7h5TUMZTUoiT1oqEgU8K6qz1LOy9xPOBIMaKvwPOhseXUHnHt8ipsLSrG0jJEC6jRUjHZpu/6X/uThOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zETFEm9BYPdEdRvKwFFBAxI1hVKcBQofcwBbnEXMXIE=;
 b=eEfKpjoDAwAD1ysYlrMEJijE5YXI5ejcc4HreUXTE7VQt/CBteyuXwFNnGs9aDiGx8YtuD2UKXAh7ag4cpX8OFW8K3k9zlMldezmDcKROpb6qSxvYaBHT4RvhSzSspRSkyv1/NGqBzTWWoc+4JPcbJVx1jSrngfuU7yxTSwNNNZCuNezPMUktmD+iy8j+GdN1lRDxlj8e4qhbl1Y/rbFyWXP01Z8qzFCPzOcwDJB3kz6OFegHU3zPyf3S8p5DCcoi1ZmNm7eFOgK7WPsqsVmcgKOO3lk4IBqj4rNRElr61qVwN2ybiiTFdw9ZQLGg3wZFGr3Ks1+SKnBl5JmQpTr2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zETFEm9BYPdEdRvKwFFBAxI1hVKcBQofcwBbnEXMXIE=;
 b=P//Y1MdPxi0QtvhPFQfCoxQ8mqrdJF8fjL/oVDLldCj/3EmspUVxHpHcknqQtVobNIAHWo6MIdZ+G/SvKuZnm56ZWA//umHtVh+mzqQazyb4RqVLrZ6Y413s2fhNIJAorX/jopHgp/iOKaehbaYB5iIzBlKbxStbCzzXbJP3fWg=
Authentication-Results: lists.SourceForge.net; dkim=none (message not signed)
 header.d=none; lists.SourceForge.net;
 dmarc=none action=none header.from=oracle.com;
Received: from SA2PR10MB4665.namprd10.prod.outlook.com (2603:10b6:806:fb::17)
 by SA2PR10MB4602.namprd10.prod.outlook.com (2603:10b6:806:f8::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 18:50:07 +0000
Received: from SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::9ef:6fd1:7968:f7d6]) by SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::9ef:6fd1:7968:f7d6%4]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 18:50:07 +0000
To: Peter Grandi <pg@jfs.list.sabi.co.UK>,
 list Linux fs JFS <jfs-discussion@lists.SourceForge.net>
References: <24867.49915.325040.460629@cyme.ty.sabi.co.uk>
 <28b8d55e-8e8e-aed3-fa63-618b9c5a02bf@oracle.com>
 <24867.59883.813604.12280@cyme.ty.sabi.co.uk>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <5c37d98a-f830-579f-6094-bb0330c5a032@oracle.com>
Date: Mon, 23 Aug 2021 13:50:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <24867.59883.813604.12280@cyme.ty.sabi.co.uk>
Content-Language: en-US
X-ClientProxiedBy: SA9PR13CA0163.namprd13.prod.outlook.com
 (2603:10b6:806:28::18) To SA2PR10MB4665.namprd10.prod.outlook.com
 (2603:10b6:806:fb::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SA9PR13CA0163.namprd13.prod.outlook.com (2603:10b6:806:28::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4457.9 via Frontend Transport; Mon, 23 Aug 2021 18:50:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0e44ea64-89c1-455c-95ef-08d96666d3b1
X-MS-TrafficTypeDiagnostic: SA2PR10MB4602:
X-Microsoft-Antispam-PRVS: <SA2PR10MB460215C0B929E9450EC5397487C49@SA2PR10MB4602.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bdMP7IORVUxiqllEMqCulBHVKPjFQhAtTYdf1ZDZW3smiNQc8toN1pR9VwhFSp0i7ByjUx+ZPUONk6N/MfQ/I9Vh7N7atg/QeKXOfMZ94ga5Egwc5YZHOPXSXhAPqhxXLVCqwbeC+KjZ8ilNWI4tnps2RyVcm9GKeo4w29eVwasZ9qIGxo5Bjd0kAqTh9ALul4kL/uMDP90ZT2N1ePZO89xXKLjN11Lfuaff/7mdBf3pchbQN8AN53toM7ZtuXG/+U8YwPSG02Sk5BvQoDn4r6hK59vzwE5MOqHQ+oAFjGvQEVIc5Z2jB0WqswU52C7DNh3tqhKQx47HeWUQoa9BWwlERjhT8wVrLBYQz3RRcAILJ2mGv9gVMZCtiS9CvfSHAz6mXCpvvU4u+sFS9agpvBsXqUz2Scf3elcKYQOA/lGzWt+4P/pduYv5ZhGRyX70oGvKyfZdqf93wuboQ59jgO3O3J3EgcCZr8G6t3y731vdZHFAyDw413XhVQx2ZY8I+U7qo08U40AOceDPlro+KS843u6bMjCzXrxtH5FugZMsiG5AADYns7oi3nvFLVXMYh+FOxkCbYLMA9GAYtYgQ24+k+oduJKdE5swbK0VyoZ1bZ0YS+XPo6jRX37hRJG/HBQMOM+3bsqvkVd0FoFlRzFRl6ScddfOdXiQ3JlOQm3xMBGi3/L2mzCdaeW2X5p9g2STtkm+qwvQJ2SyiJNnQti7KObFjYmgmcwF6bCP8puV8dm7yuDHvDmYf/GbUQQBkCrjRv6MJb8xUDgXGNNcLAxwwreY/yKRw0JY2a4/7MoCJVx/FDQe0tL8sxbwCfXI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR10MB4665.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(136003)(39860400002)(346002)(376002)(66476007)(186003)(66946007)(8676002)(16576012)(26005)(110136005)(6486002)(66556008)(478600001)(31696002)(86362001)(15188445003)(316002)(38100700002)(44832011)(966005)(8936002)(31686004)(53546011)(2616005)(5660300002)(956004)(36756003)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2c4V2V2eUo5dDlxRWRtc2dlK2pkVGRvNEE4OGtuUVlQdzBGYXZndFIydEVR?=
 =?utf-8?B?ejZ5VWdJeWpvUW5HNDM3YUVnMlB2U2NPMTRzUHRzUFFnV3hrZWRVaGk5Yzc4?=
 =?utf-8?B?ZkFTdzlzY0ZMUjZkM0s0WDZBeGVDVkt3UUw4RDdXT0JUanZEY0RyTFBxaVAz?=
 =?utf-8?B?Vyt2b1Vid2dKSVEreElELzJaZ3FTWEZSbllwZ1hEMGg2d250M0lyY3Q3a0tq?=
 =?utf-8?B?MVMzVEdEc1ZDTGV4bVN5YkZRTG9IaW5GSms0YXlLUEZORzRHaHp4RmV1b2lV?=
 =?utf-8?B?dTJzSWwxdlVFMmh5YXVOZjJNZTl1c0ExVTZIc1BZUUJmdmlVRjBsdWxVUFgx?=
 =?utf-8?B?RGViS1A4ejVncGEwUnhodkNvVDNYS00zcmZ5NHBTbkpWMkJ3QnJtRm5GK2Ji?=
 =?utf-8?B?bmlzK1o2blYrekhveGErNkZkekh1OEl4RFZxU2Z5OE83QjJ0YmwvRTVsZ0hs?=
 =?utf-8?B?RXo4eldibzF5dndDOEpCVFRYNXMvUnBDNzdlR3JSZkdoQUQ3dkhVOTlwcjVB?=
 =?utf-8?B?SVhrbWEralJoV050UFRJRUNBU1Y1b2xsWVNlVCsyelhjOHBrTWNaR0w3T2Qv?=
 =?utf-8?B?MGhwS3FjWW5PYkF6RXJacHFObjE1bTFNcm5LTTB5QXJPSXhSVVRtUmxYU1FE?=
 =?utf-8?B?K3g1WWdzbVlneWI2b1pCQUkzMFlIZ3BlYVdXUDI5bVBTVS9iMkVrK3lYUGNi?=
 =?utf-8?B?WHR4YVNmR3RyNWQ3ckdYNmVYSUJPR1dVcUcvcnNPSXlhU1Q5cjlObW9ydWpO?=
 =?utf-8?B?Wkp3bWpBNFl2ZXlSMDBDQ1p6Q2s4b0tIcTRSdHM1MUhPVkZ4VVdzQ1FjcHVS?=
 =?utf-8?B?UisvLy9zVXFEZGpaa0NNWEhMcEpTdENkbnlCVkVsUitzSFc2aG9JZkNwdXBD?=
 =?utf-8?B?RWJmd2QwME54b01OKzUwWmNUbUNzMzBZaVpSeVBiMTJqTGN2VkhsdjBMUnF1?=
 =?utf-8?B?ZG93TnFQWGhHWkR3R2tQZU9yczNkV1pMZmtDRWtVOVVZTFA5Y0tZM2g3NnFn?=
 =?utf-8?B?SjRjL21JZStNNDJzM3hpRytlbEhEZlVvSXlOMVRLWTZTNU16UjVBdTdtRkt5?=
 =?utf-8?B?VTNLTUZHOFBFdXU3S2pkMG9CR3lZSWlmTWtGVWxaK1ZWcElkdXU3WXhrYTZp?=
 =?utf-8?B?TUx3Y3g4OFg5ZXR1RHljK3FQREpUNjZZb3pYeHBkZUhPeGFrNXNFYWRmUk1z?=
 =?utf-8?B?RFFMb21BaDVqR1pDNnR5Q1RueTg2VE1HSzVyMkwrdWJPZWpCZEJ6UU1xTjJv?=
 =?utf-8?B?dUszQlJscERwTEZuV1cwZTF6dXRDZGxraGt0VzBsNEVzdVFxZzVZaDlyTUpZ?=
 =?utf-8?B?VFhXZlNGc1hnR1RVWkczZ2ppdHBvakw4Qm1qdU9BdGs4VDJ3Y0pKbzV5T0Zi?=
 =?utf-8?B?UCtjTjFxczl2L2x6MnYwL3U2Mmp0ZHFnK2F6aGwyS2tvTkFEbVYvOUpPd1I0?=
 =?utf-8?B?RHBlK0dmNXRJQm9ucGNMU0QwUXlLaEx0ZTlPRDlzWUlFaU1SeW1yalhGTzlR?=
 =?utf-8?B?Q3BseXNRM3dIdGZjTTJOS3BNUUE1VUMrV0wvNC92RXpGeWVJU1FGYnFLbzNl?=
 =?utf-8?B?TFZKalFYcUh0T25NbVNOQjByTWRkODBGSlFnVXl5ZGNyMjlSbmlYVUtwci8z?=
 =?utf-8?B?QjJFUDBiRlFiZ1NPQ2hPUGhOdDQxWVpUQytMQzhIQTVrUEE1SnQyR3k4anZC?=
 =?utf-8?B?Y3haaUV3RkM5QlpEVHo4em1uR1BYYlJxOWNadFBtWFd1TUJyOUxKdFNab2Zm?=
 =?utf-8?Q?PmvU2ow46q7eFfJZu/vXQyfvSh8FuTcU7p3mQjG?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e44ea64-89c1-455c-95ef-08d96666d3b1
X-MS-Exchange-CrossTenant-AuthSource: SA2PR10MB4665.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 18:50:07.6363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YbaAjiXci0P0E/qNTYLe9KtUnqmY5IONBkvKvpgs2HcutkxGx0hqgouLuNWpZJkBQNTDS3Yedg3OUgbYYGlavDsNO5YXXcg8ugikryvB6zk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4602
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10085
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108230128
X-Proofpoint-GUID: MCnPhM7hxrSQeGBkmnMhnjvmtN8-UPlS
X-Proofpoint-ORIG-GUID: MCnPhM7hxrSQeGBkmnMhnjvmtN8-UPlS
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/23/21 1:33 PM, Peter Grandi via Jfs-discussion wrote:
 >> [...] the JFS code actually has the infrastructure to support >> this.
 FILESYSTEM_I = 16 is the aggregate inode that describes >> the moun [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mIF1W-00G4Q2-IO
Subject: Re: [Jfs-discussion] historical detail: multiple filesystem
 instance roots?
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 8/23/21 1:33 PM, Peter Grandi via Jfs-discussion wrote:
>> [...] the JFS code actually has the infrastructure to support
>> this. FILESYSTEM_I = 16 is the aggregate inode that describes
>> the mountable filesystem. Each inode actually points to it
>> with fileset or di_fileset member (which is always 16).
> 
> Thnks for the reply, that is interesting, and I was remembering
> mostly right.
> 
>> Each would have a distinct i-number space. They'd all reside
>> on the same device, so there would be no distinction of
>> device-id. I guess the rationale was they would allocate from
>> the same free space.
> 
> By space I meant "name space", that is range of numbers; in
> Btrfs and ZFS each filesystem instance root has a different
> device-id so each can use the same full i-number range, which
> simplifies things.

I guess the device-id would be equivalent to the fileset in JFS. Each 
fileset has it's own i-number space and links would always be within the 
same fileset.

> 
> Using distinct device-ids also means that hard-links between two
> directories under different roots become impossible, which is
> good because handling such shared inodes would require extra
> work, and in general linking across mount points is not an UNIX
> thing, and I like that JFS is still one of the smallest "full
> functionality" and high performance (except for fragmentation)
> filesystem types:
> 
> http://www.sabi.co.uk/blog/21-one.html?210123#210123
> 
> BTW my question happened because I was reading a misguided Linux
> kernel discussion about NFS and Btrfs, and I wrote an overview
> of the issues here including my memory of the JFS possibility to
> have multiple filesystem instance root directories:
> 
> http://www.sabi.co.uk/blog/21-two.html?210804#210804

I see. Btrfs does some kind of trick to create a sub-device so that the 
kernel knows how to specify which sub-volume to mount. I've never given 
any thought to that since I've never expected to enable a second fileset.

> 
>> The design was done before any practical resizing was
>> implemented, so it would give a degree of flexibility with
>> file system sizes.
> 
> That's a useful and interesting motivation, pretty much also the
> same motivation for subvolumes in Btrfs abd Zfs. BTW I have
> become a bit skeptical about snapshots (they add too much
> complexity), but multiple root directories (subvolumes) are I
> think fairly useful because of that "degree of flexibility".
> 
> 
> _______________________________________________
> Jfs-discussion mailing list
> Jfs-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/jfs-discussion
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
