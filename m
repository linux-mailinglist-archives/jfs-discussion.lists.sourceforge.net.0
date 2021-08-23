Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D84173F4E64
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Aug 2021 18:31:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mICqn-0008FR-5V; Mon, 23 Aug 2021 16:31:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1mICql-0008FL-SL
 for jfs-discussion@lists.sourceforge.net; Mon, 23 Aug 2021 16:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HRlHt92uccSTFbu0c9k4nLu9aytY91jwu/b5Xa5qokg=; b=ji8Etf0/T5HdQIknbnbUfc9gUO
 AZm5AsOcPvjXSqL64Uj5IEOD5qsvlO02fPomQLJppscjKcN9Ym7xmC6YBjHI4ELXrnHMqWoTRejM3
 VmPJueSrO8hyBC+3xXFwAExLYA7Yx9Xwh8+N46W3P86mJzD6OVkhOItkCbBDLDw/myi0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HRlHt92uccSTFbu0c9k4nLu9aytY91jwu/b5Xa5qokg=; b=OvY4rZhIfmMWE4wTtT6+kG4GpQ
 AQmJgu8aYP2611ZIXLPzIaOMyWkCxZr/HHI0vJ8AKDrbHemMQUO9mkQeCHSo5jXBhLAttq+4BYd8Y
 S8HVe+fqvQ76wE0bfO/8v2FR4tg3UK+MR5M4pybX9x43lDhsQl6ALW/yE/6pVl5ZswYE=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mICqe-00FyDi-RW
 for jfs-discussion@lists.sourceforge.net; Mon, 23 Aug 2021 16:31:03 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17NEa5hW024900
 for <jfs-discussion@lists.sourceforge.net>; Mon, 23 Aug 2021 16:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=HRlHt92uccSTFbu0c9k4nLu9aytY91jwu/b5Xa5qokg=;
 b=PA8dqehXrw5Urn8q1jkhrKifiAv66LKk7Wep01KzADQiBs6ncc7vd7EcmQPzIBhg4iYF
 pwdUXNM/ywtaSXV4nH6eTqgPcmn75fCU+3X7HrVPpODoNv7WF4a+n8CV0dPg/UdQXNwd
 KJmCZr91MHBWJw/s4FbhC5Lm3H/iRf2iTFrgEPMTtLNUEzMVyvaMuEOsk2AYUIxqUX3H
 98Q84zI5EyHKMmXBif+qnI4n7oIjvoeFtteK3DgtPk3LoW03qlIcFyo/Td8rhRjPMkJF
 CpbGot83k2N6gfHQIevalJI6ArujgDZ0ytddTbNVFvMQiDpDVt4AfsCF8zN76wfbOFUA 4w== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=HRlHt92uccSTFbu0c9k4nLu9aytY91jwu/b5Xa5qokg=;
 b=uu0Q3u6kkirbv5kYyoBqfaShos3ABUn5SoGtd/bdhGq0B2aUhttK/ZDceZzSX+QXaSEn
 xOp/wjvF0NtRjqTy/z8t1fg7ILdAUa8SKo9idDgWW0cY+iWJ0CLI2MUcHn7XJrLCKfpG
 ZvXvppbl8yiyVlT22hWl3qw4PKvWhPRBz7qNIaZZOyeNea/xfMevcnbHimgFCq4KkOiT
 BQu/+3LK7YotenG+3Nbgh4dcKR0+8yNnAhy2Jee5Ob95j3Mooe6mnNiGTImZKxsFbyt+
 DF1qZP2l0KqhELoGsdixqvLPmTBasv+4L07SJ1ZeCG6onvNz4/MXvEXvOJeUtrAUiDvx 0w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3akwfm21k0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <jfs-discussion@lists.sourceforge.net>; Mon, 23 Aug 2021 16:30:51 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17NGFOsx060390
 for <jfs-discussion@lists.sourceforge.net>; Mon, 23 Aug 2021 16:30:49 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2170.outbound.protection.outlook.com [104.47.56.170])
 by userp3020.oracle.com with ESMTP id 3akb8t0t19-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <jfs-discussion@lists.sourceforge.net>; Mon, 23 Aug 2021 16:30:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iQgSDqNRsEMh22uQGX3a1ROcIiF17gZ+4ES+Ce0IZK/rM35O4npp2+8juhuwdsXOPKVrBWbqWGaKrix4jJyT+ZBWWBah81aXCCvVkM5HGDo111zODES8cVOcWcvTgvwL0SwbwrbptL7nZ2htC7nGBBrP6db3orC4Xx7zUjAiXtPcPNyIwz4f0o9kTC2X1fjHZNkOR3JL8WnZ64J3h7oHRU/I5PZyUY9SxRQPXXZAAZlJ4j6m2pRg8Cu1a4e1bNhxbNtPgeo+uZ7mci9lrhTcj7umNz7PvowdkpBSp2bDeBL9ryEiLlmGv98a3V7cJePAgjpkOw7UwTN7SKLvF3WTVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRlHt92uccSTFbu0c9k4nLu9aytY91jwu/b5Xa5qokg=;
 b=HBP68ZIg7hToC7fR9JrMoIN9fAeTftJneqig5HpEix1MV7pVrY8zHe75X0eKtfg2KA5p0OFBij2a5U17TTtrOkYMqID/JgnSYibzKdAR5Z2zrgj/HzsO6EYNASUM7LYSZYzS1W4OdRD398NpZ87q4lpSa8OElFiOufONz7NhnYdR9KF9a4TxfTwOMzZqYdEzHGNfP2lZuBKp4rVVQSx4kKiN3Fwtm0juLP8HARYwwo3U3MdhpcD0+86lgcx0EGDMHHi2yEOz8g4ZIM66VurrIT7r6Wt6slzd5u+X5ZCPaohcRY0PHb2tV1XyG+Cpw3N2bdvVWgbVP//m//5E6SCueA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRlHt92uccSTFbu0c9k4nLu9aytY91jwu/b5Xa5qokg=;
 b=aN4NNAMHKIToclmNLFrBtppFcome+Iz+A5WaUdI8jJ6ntflYUUkSMUs5eFz727Hbo/VZ4yOKqkoooshL/6+CdEXsjCKnNi/0PGsD4OOePcf/tjQio17O6zwh4pDax2Ea5TH/nHPs0OhTWqBXAH2MsVx+op1MOy3zTpqu0Jkwq5M=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=oracle.com;
Received: from SA2PR10MB4665.namprd10.prod.outlook.com (2603:10b6:806:fb::17)
 by SN6PR10MB2464.namprd10.prod.outlook.com (2603:10b6:805:4d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 16:30:47 +0000
Received: from SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::9ef:6fd1:7968:f7d6]) by SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::9ef:6fd1:7968:f7d6%4]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 16:30:47 +0000
To: jfs-discussion@lists.sourceforge.net
References: <24867.49915.325040.460629@cyme.ty.sabi.co.uk>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <28b8d55e-8e8e-aed3-fa63-618b9c5a02bf@oracle.com>
Date: Mon, 23 Aug 2021 11:30:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <24867.49915.325040.460629@cyme.ty.sabi.co.uk>
Content-Language: en-US
X-ClientProxiedBy: SA9PR13CA0062.namprd13.prod.outlook.com
 (2603:10b6:806:23::7) To SA2PR10MB4665.namprd10.prod.outlook.com
 (2603:10b6:806:fb::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SA9PR13CA0062.namprd13.prod.outlook.com (2603:10b6:806:23::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4457.10 via Frontend Transport; Mon, 23 Aug 2021 16:30:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 23fc825d-864c-4c63-f501-08d966535cbd
X-MS-TrafficTypeDiagnostic: SN6PR10MB2464:
X-Microsoft-Antispam-PRVS: <SN6PR10MB2464B9D70A68C794F1AE905A87C49@SN6PR10MB2464.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Iiyp3tMNbpDRJqUkn8KhplUWgQN+Nd89b+NnHg8SowAljbc8hGV5ThOSt0k2tdd/Uibpi0hkgESqHpVOrJTVvaEoq/wqU9WrBmeAm746mh7FlE4UOLKruFT7MhZWhx/0KMmJvSbSVWwdv8RqUPX9ZjNT3bHEP1zljTMP4twGdZVT/tJOYgQuRdAWwgxqKUkKjBaMoO5+xFAou3B6V7qFk8x7IznRAu7n0zOrMv9NKCtYUKLpVgOcHtgTn3cjjixx+OfUbUnkY7bR3Rwv+WEQJka4xR5HAUkvPykPbBCMUlO2Aci0VpXmiCYRuaod6vzTmTfGVvYUXf6HIeccjoAbuSfBZG053/ux7GKZIPaTTh7a5HTKNElitU7rfMiBYpzIBL7ZrKcRZZJV/qbs666nDs5wT+mvxjw14pEqIoipIBrzRhQ4DA9a+iKuHa59FkheVL32mQEhaXkByYy43vzqTjwRKFGkc+ZMxSOpbP/u62d5tOYeEBydXOZCo/hKJ+9QZb9NBDMFikbJuX/ExmC2ShmteUBOgMwIPFqfVHvq3n835XHM2L82PcdguFGrsBvNA9hRDsbSnLv8+bKeQuw6AN2r3yYqDfSZgGeXGExIerrUhM7UG7Kmw+6QFFccUbnxccxu5ibceiCztK5BpoNwMZ+dgHoixaX320+ZyHV0/RvcKcs4aTVusx8Jc9kyaHVC2VhRVCidDtNvaONPgfoF/TSySTgYDIaUtoIhhNK2/FU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR10MB4665.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(39860400002)(136003)(366004)(8676002)(31686004)(66476007)(38100700002)(66556008)(6486002)(2616005)(86362001)(26005)(31696002)(36756003)(2906002)(6916009)(16576012)(5660300002)(478600001)(66946007)(956004)(316002)(53546011)(186003)(8936002)(44832011)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWIyZEdqc2lUWUlNaERJMlB3cllUNGo5N05mTGVRQ09kMk1Uc0Y5TmdtTWM3?=
 =?utf-8?B?OVZvNTlIcjZXZ1lEU1Q0UlR0bldKVjJmRmsvc3dXak4rcEIwVldtcnAzVUtU?=
 =?utf-8?B?RlJKNVN5ODRmb3JFUEorNTRoTGxxMHVTSmhxTDNKZHZuVVl0STlMSStmMlBC?=
 =?utf-8?B?UXRYUmJKaXRaNW43dzdqR2tJeDdCYmR1SEVaR0VYQXByNTFvU3hENk9QWFJq?=
 =?utf-8?B?c0lJcGNLVlBpNjFWRFVxL1A5OU11ZDFJUDhiSldVQXhRelcxdFFnRkk2Y3gw?=
 =?utf-8?B?bzhNajQ0NFB0b1hlTmg3UXRhM1RwWC9xVUV6MHNkcXozRmd6bVlFUlR6alNm?=
 =?utf-8?B?UWZpSXBKV1QzMlgxSzRMY0FVb1l4cG9HTXRhS1JhemY3b3NhY3pWTXI4M240?=
 =?utf-8?B?cHRKMyswV2czYkFBYi9CV3VKRUl2NTdZR0lacFNWenM5N0ZQNTdKdlVTUXhX?=
 =?utf-8?B?dXk1RldNTFloK0ZGeUF2LzhNOUtUWVR6LzdodzhBcW5HSmdQTm0xOEw1bWpY?=
 =?utf-8?B?VlowQ285L3p1Y1lsNnBFVGdBMUVkZC9WVFhvbFFjRHFrMFFTVTF5RWZwT0R5?=
 =?utf-8?B?Mzlodk1xSCtxWWFndk9RbXZlcTZmOGtjUFZBUzgrS3c5U1A1Y2RkRzNGdHN3?=
 =?utf-8?B?aFU3L1pnVVFsd0tPeDVwd1UwY21hbk13UDBmV2dOOU5jZjZIeGFrSlFCbDYy?=
 =?utf-8?B?NXFzcGxNTHBmV1ljNkQ1Z0N3enlkSXIyNFBrUUxFT3JHc0poelZaQWhlMnkw?=
 =?utf-8?B?U1pEZGFobE1rRnV3YVdzbUVQdUNXVHFLSWdqRUpLYkh1bVhjZTBmRkEyMklB?=
 =?utf-8?B?azZuZ0hMRVBhT2ZpRzRnZ3czRDh0T3FETER2cjJPQmUwL1B2bGl5QjZlRVlq?=
 =?utf-8?B?WnZycnRZaWVRRDhMMHFUYnN3ZGkyU2tkYmJyU3hRYjZ0TEtkUm1jaXpkbGd4?=
 =?utf-8?B?Wmk5SEVxbkdOVmRCcVR2N1JadEo0Rm9LZDNGMjVkWFpJQzNJTm1nRHRkUzRO?=
 =?utf-8?B?YUZnZThuakZPazZKNVB5SXdBSWhzZFhkaUJ4ZTJhdDg0YVBmWkJVeFlmbHMw?=
 =?utf-8?B?eXFocXorOFZUckFPdit1MHNnOGhid0ZNQTNPRC95OXMwTTRGTmlRY0huckVt?=
 =?utf-8?B?aWxLVURlLzc0Y3JGelBuZ2FWWTkwbnZ3aGxxb0JvRFdlMDcvc0dsYzdNTUxz?=
 =?utf-8?B?ZUFrSGs5eWNvQWlnVUwvMmVUQ05ITVpMSmJWL3lxMWFicjljOXZMbUhvcDhU?=
 =?utf-8?B?YU1oM2VXd1VZS3cvMzFpQUo0ZXpyNHF2eEE4aEp0UTFqN3ZCeUR1YUs2bDdN?=
 =?utf-8?B?elJkMjJ2V1Q5d1NZWlY0dEFLZmZHWDFacG5Oblp5c3FlbkhMMHhDU0xBVlBv?=
 =?utf-8?B?a2R6QjZ0UTNSN1E1cmIvZzlXZVNQdUlpVXFjR0IzRkdTSzA0TkY4ejZsQ3VR?=
 =?utf-8?B?NzVRRlF1WnJXdmlNSEZQNmFiYkptVjl6SlhsZWI2RGd3UlFNUG80SldvSHNq?=
 =?utf-8?B?dWxsN2svcTQxbDBNVm5WRjUzTUdST1N3c0MzL3BJQm1RUVFzQVVqR3doUWNt?=
 =?utf-8?B?UVF1Q01iWFJiR0Y0T2Z1bVFkZzZOb3A3dzR3QlpwL2lySzhuTjV4TXcyTlIr?=
 =?utf-8?B?endpTldlL3k2aUw4alduTTk2cFNobkllZHZ3WVR3ZDhscGplTHNTRDRmRkNW?=
 =?utf-8?B?ZlRQZXhhQnhoMUhZd0k4WWdRdWJONFRIbnhUZ2VvamI0QjZab05OU1FtYU1w?=
 =?utf-8?Q?5FcE3W3PgeI5NykBnmp6Mvry7drbqdr/nL2jJuA?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23fc825d-864c-4c63-f501-08d966535cbd
X-MS-Exchange-CrossTenant-AuthSource: SA2PR10MB4665.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 16:30:47.5619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v7njCVqgtgf0f2XAakbwYS6+ndHgHlaAqMRP3cWh7sn1CRfXsKdPY6YvlIEEsfGMz2X2T0AVNpGGdYH+j9cL3eQvJQRKwkTz6fKkS5zaJOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR10MB2464
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10085
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108230112
X-Proofpoint-ORIG-GUID: 9TMwalmPwZSliQ7oEWhq4pimI09xmJsj
X-Proofpoint-GUID: 9TMwalmPwZSliQ7oEWhq4pimI09xmJsj
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/23/21 10:47 AM, Peter Grandi via Jfs-discussion wrote:
 > I seem to remeber that OS/2 JFS2 and thus Linux JFS2 have a > vestigial
 feature, that in theory their architecture support > multiple per- [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [205.220.165.32 listed in bl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mICqe-00FyDi-RW
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

On 8/23/21 10:47 AM, Peter Grandi via Jfs-discussion wrote:
> I seem to remeber that OS/2 JFS2 and thus Linux JFS2 have a
> vestigial feature, that in theory their architecture support
> multiple per-filesystem instance root directories, which in
> theory could be mounted at different mount point paths, even if
> this feature is not supported or available. I guess that would
> mean multiple B-trees, but I am not sure.

Yeah. I'm not sure how hard it would be to support, but the JFS code 
actually has the infrastructure to support this. FILESYSTEM_I = 16 is 
the aggregate inode that describes the mountable filesystem. Each inode 
actually points to it with fileset or di_fileset member (which is always 
16).

> 
> If this is true, were they designed so that the independent root
> directories would share the same device-id and i-number space or
> each would have a different device-id and a distinct i-number
> name space?

Each would have a distinct i-number space. They'd all reside on the same 
device, so there would be no distinction of device-id. I guess the 
rationale was they would allocate from the same free space. The design 
was done before any practical resizing was implemented, so it would give 
a degree of flexibility with file system sizes.

Shaggy


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
