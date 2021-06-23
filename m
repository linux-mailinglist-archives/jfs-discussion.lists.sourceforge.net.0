Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F053B1C29
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Jun 2021 16:13:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lw3dC-0006Xo-Jh; Wed, 23 Jun 2021 14:13:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1lw3dB-0006Xh-Ma
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 14:13:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LB9NWg+JeIXF/8jPd9iGDxyuywW2jylufGl75zeSAg0=; b=DqwEphAVwMhW59OlLrzFsmNk4e
 VNL4gYWMQdtGZFGcYiw2//KE4hfrdiwbgnJqq9yazumAl3JgjQEWJ/lwunb0tCo56kp6MMVVDUH1l
 hqGsBfvgUc2s+/KzGxKrbsk7yPGHIugytbRc795avvs3kS1WAsErLx+gSceYHCXfhWN8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LB9NWg+JeIXF/8jPd9iGDxyuywW2jylufGl75zeSAg0=; b=RDrU5TbQbwCFZI/WPZvuopPEas
 BV55cYxFR35CAxdCCzfEdt62NG21PPs1V2iVlk7rcpmKrF1WsLd/6yPoLw1bUw8Mkyc2z2g6Yr+0w
 HWmh2tZY12UqFGt/1ulcWLKwBMhNW9ibfq8ccjZWLhPjIBJwA5JNNvdZOTwbIS4ajWyM=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lw3d5-009His-V9
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 14:13:33 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 15NEAJJq021433; Wed, 23 Jun 2021 14:13:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=LB9NWg+JeIXF/8jPd9iGDxyuywW2jylufGl75zeSAg0=;
 b=tqx03BlfwHxcyVDQu/F62EfWIS66FNJEbfYX7gfAWVje3K87eDKvyzakbdTvxVfNF8yC
 kQ7ZeyLFtMALsQtp8Cu0szVs7Us2rIFc67paqBQbZZkVJAbXBLoAUKByya6rSlT/Vwrx
 GYXRyavcPGEHI942oneWNrvXrGS6XZHvNr/Ns9akRcjdCu3dw+fT1ydURqbWWhhNgSXo
 xGAqA/Zb/8AIqzfTWpa42p83JnmucNjhxC0igse4URAzJApTSDvdsyJItCXI7qQkpY+d
 Aep8ASUwtHvBYUhq19nZdd1evY/zUnfWDayVdX1R31IBAsxE3+jjc9KvrLmXDKA0yEHY 0Q== 
Received: from oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 39b98vbxd6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 14:13:13 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
 by pps.podrdrct (8.16.0.36/8.16.0.36) with SMTP id 15NEDCTE171550;
 Wed, 23 Jun 2021 14:13:12 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
 by userp3020.oracle.com with ESMTP id 399tbuj5dm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 14:13:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bh9kQb3cTeT0dLdxN09iZygXIY6mcaaZM4jS603SjH47NTDeVDJXcgDQaAxP3lEcGsNtNhkcBJqKR6jzMkP+u1Q0F9wMTnYFuJeXPcsQaS7uOAlOdW7a/lsZAub2GNrJAKChYhVHqUzZof6P7bwu+kZoddH/3Qzuz0bL++OIJMNA+3cF517gaYg+zBsZNtv6wIzbDmBXlvYyrvxY4pZgRY3CohmJ6so0bl1HQHYymkT4jrRgvlfkKDXal3BaPKYocCvFDWzNapAIAoxwbUjf2i4faFHDQ6yoYHtjYQ524m8+yYz1WeqLs3Mnol7ZucuPFlfhihA9fO+W667GD5wHUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LB9NWg+JeIXF/8jPd9iGDxyuywW2jylufGl75zeSAg0=;
 b=exfAC6qctDz8XfqTauG+fK1ULytiGgGpzQzanZLp7hA6Cy0TayXyF9PeQ+ZpP3cKVqJjdEMpm7csVNMOQ81BbyFyueiG2KJMbPqo2r3BgFCdyFsyV7IgFa0WRhws0B1irGDoR2gblqw+/qo5EJMXy/7DR7jGd6cDRhfysqvBUyCu4LuIjPtYbTgFg5Klegx/saUntWcQOuMiCFeXMrbJQlp4+PMXOSQ4WDkFOQk51d72W0FFE8mUV2Gte/q+gs0dyfCk/HNsBeFfQDw8pZC3s4+sNlBdO+6Apj4ibZARaxvuI5Z4/oqHCQZ5+26UueGLp9/Nh98vmzNqpe166jBReg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LB9NWg+JeIXF/8jPd9iGDxyuywW2jylufGl75zeSAg0=;
 b=zu4LzyPZaktUTdfr66qUCpIhH549bdBarl07Eo7HSIr+nJi17QoZ5pi5z4y8xF+CXQ0QxJok1A8mK2WlvX6jCsRL0BK5EwR4ObY4c1vnMYXB+gsjnGM3X5KrpUn5DWUaZRj8zajB1odtsOTl7CfJh6mBb4n49fsTwPDU9TCFVUM=
Authentication-Results: syzkaller.appspotmail.com; dkim=none (message not
 signed) header.d=none;syzkaller.appspotmail.com; dmarc=none action=none
 header.from=oracle.com;
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH0PR10MB5355.namprd10.prod.outlook.com (2603:10b6:610:c8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Wed, 23 Jun
 2021 14:13:10 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::e8b2:b3ae:8523:98ca]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::e8b2:b3ae:8523:98ca%2]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 14:13:10 +0000
To: Pavel Skripkin <paskripkin@gmail.com>, shaggy@kernel.org
References: <20210606142405.31047-1-paskripkin@gmail.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <319afbd1-afc0-bae3-c446-3530505e7b21@oracle.com>
Date: Wed, 23 Jun 2021 09:13:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210606142405.31047-1-paskripkin@gmail.com>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SN6PR01CA0032.prod.exchangelabs.com (2603:10b6:805:b6::45)
 To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SN6PR01CA0032.prod.exchangelabs.com (2603:10b6:805:b6::45) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.18 via Frontend Transport; Wed, 23 Jun 2021 14:13:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0061244c-7d96-403d-2161-08d93651080d
X-MS-TrafficTypeDiagnostic: CH0PR10MB5355:
X-Microsoft-Antispam-PRVS: <CH0PR10MB535505C778A07BE1587874C887089@CH0PR10MB5355.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NHW5+uYlj11phL/O90RQwON9/YA2l1MO93o4xQVCypILPY6+gAvwaBaPLXVEf5v/ikIGeHJMCbLFC+rtF6WK8K5yLMMt0v5RgDKdmngjVMsMPZdom9H2bpaieaFloaCGihIGnvZ85brYiIC4PKVqRwOx/8oorkT7+y85XRCbdDF8Vm9+JQx1VTP2+x9uXeGTT8Esxwk4wE0/5if8WvMy1ZwU0fc2BjFIcoLEUjlrolzb7DhoGTmv8NkudaWTh1txPow91JbBI/EYgtbKGUp8NMNPMhDkUXbxG1c9YCX0C55iFiJNLoScfRDqooji1gBfT1P2mRetzRNO6FYwbINJWASCOnwYG0i/uYFnlkguCBQZrs9oHtE2dOogwdEB86GDCUrTHuFSUgNsM3uRK6bdTgLfpbvjIFHTJH+JV8TCxS5O/TiMd4sjfVx9vCJzIDC2uNhiQeUkrF/0FBvA29PiUX/TcjAxGbbzlmAkh9eW2gT2IvcLwzuUum9qd7ddT0C4gwy4OxuJupetuXHLCOtR2Z9E5/arg83yRW2P7FdVYLF75QjdFVaLBu3SIMVgKPaC2aYqDIGokcdGs2TofDW3CkWBFyyTuupxC6unw+fJv+VT2n+s2MNmAzX3nUiZSBoUJ/S/BI2v1VyjWb96+7DrtQfGzwpOSdMsYsaj8FF+0D18Vhi/CaQcUnso0w/FA9JZSIp6AG5yjRbUu3xdBw8VVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(376002)(396003)(346002)(366004)(26005)(53546011)(8676002)(6486002)(66476007)(44832011)(66946007)(36756003)(186003)(956004)(316002)(2616005)(8936002)(16526019)(66556008)(86362001)(478600001)(5660300002)(38100700002)(31696002)(6666004)(16576012)(83380400001)(4326008)(31686004)(2906002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjRzemhDd2c4UkJGTFovSzFDWWszbjRiaXBFd29HOGRiLy9PK1ZVRUJ5RUZL?=
 =?utf-8?B?YUVuczFnd3lWKzlGYldEY3IxMEtUbzFkem8vL3J4Tkd1dmwwNEw0d0JxUFE3?=
 =?utf-8?B?WjBjOGkrcWVkcUhBODdqeW5RTllVQTYrWW1iREpkUDZhMW8wbW1xUmpOK0pT?=
 =?utf-8?B?WkNRM29HNlZFTW9kMmduNXJDcDE5YXI2TXp5L3RIbGVlK1ROTHYwNjhWQy9Q?=
 =?utf-8?B?ZkxQbnVWMkVqZ3hsNSs0NW1ucFNwUzNjYVpMNjVZemhSbTJaWlVHYTJ4WHhu?=
 =?utf-8?B?YjFxYWMyRnk1Y1NxS0JBR3VKeEZNMWFpclkwbU5xODF5Vlg3U015Mmw3bGdP?=
 =?utf-8?B?UnNRWEp1cDF0RFJHUTBETThxQmQzQUFLNkpTNnVvRmw1b0Zjb2pZZ0Z4VS9H?=
 =?utf-8?B?Qml1SVQ1UFIyRGo3ekxqK0VCNGhrRWw4Q0VIK1lyODJOT1lreGlkay96aWcx?=
 =?utf-8?B?R1NuRFFvUkxCSDRJWVNKTUdyQUxNczV1MWlMTThPNUxtVEkyQ1hnN3FnODM4?=
 =?utf-8?B?cFRWSzBpM09Ob3RmM2dRazNPY3ZpQTRJWGFKT0xpc0F2TnB5dUtZTFJtaUNp?=
 =?utf-8?B?ZUVBVkFnalFDLzRJak9sR01SMjNybkxGVmdOakQyZW5YcXZIT09VUXR0Nmlo?=
 =?utf-8?B?SHl5bFIxbmV5NWsrUloxZlBDUEJIZGliem5jOGFXNmFRcnFUeVpTT2J1bzJu?=
 =?utf-8?B?REIxMGM4UGorWklBWHgyZ0VlejFlMG9aSHpvZjBrTWVacHNkZWYyNkFyV3RD?=
 =?utf-8?B?OG9Zb2VoMTdDbXBYbVdNZFRHbjIvMEp2S21NM3lydDBaN2wwWGJ4SG9JRE5G?=
 =?utf-8?B?MkQ5L29wdktPR2IwNWx5RkpkcjM1MFpJbFdGdmJzdWVsSWwxd1JpNUtWZGRZ?=
 =?utf-8?B?WXR4bEg0MHVBSTFpVE56bThOdGZ2akgrWlBPYzhNSDNodlJIYTh6YWhiTUpl?=
 =?utf-8?B?UzFpTXl2QkpIeWd1eDl1eGgzdGg1aXNZTlcxaDRWZ2wxVUl4MDZEUy9UV3hU?=
 =?utf-8?B?cFZmUTVSdFJPWkVsdnNCazQxMHVtYWtLcnozNXZhYTlnRjlIRkZmMjdUWDVM?=
 =?utf-8?B?UHJBUVJxbENZWXFLK2VDSXBvaTNkZ1FLN3E0MWJZdW1TZGRkYmNGcnl2VkY4?=
 =?utf-8?B?WWJuVE9TRExDM1dTUkVZL0xTZm1KTEF4b2QvQTJZRURaUWMvdVlsYnhMcnRm?=
 =?utf-8?B?c1pxa3F2Y3k3SnY3WkNxS3BKR0RRQ2FxRHFiK3h3RGlRc2c1VVlCWi9SQmpT?=
 =?utf-8?B?bEVLNk0rVnVrclYvK0xYejhYTnpIb01WVk9MV3dGdWljb0RuYUFXRWRPUzlv?=
 =?utf-8?B?SHc5YURkQjBYTVFYRVI2c1dMZ1JlNjZhNWZ1eVdRb0ZwS3dvUWJCK0x5V20r?=
 =?utf-8?B?YllZQlFwckZCQkpsdTU5cFVSVmZ2aDVBdy9GWFZLVUIwQmc0ZDhNTUVHanNs?=
 =?utf-8?B?bjRzY3hHNU16UGw5VkRYL2NsSW5YSldIa0dkTWJ4YnhUQ3l6T1RVV1ordnRr?=
 =?utf-8?B?ZW1CcEdvN2lxZlRwUEJmZ3E3NzN6Z0RJdmdhYnlvSWpIUTgvVGRPRFlLVmMr?=
 =?utf-8?B?aWlybnhod1NRcnh0eHVNQXFDSzZIdi9HRk9DSXY0UzZPQVdFeGllbjkrU1hT?=
 =?utf-8?B?UnMzWkx6MDA4b1RYQVF1UWk2YzVpSTVtakhKdnBFTEhaRHlCL3RlVnRHeHpq?=
 =?utf-8?B?Wko2bVE1VnBlZDFUMDkvRzZvWS9ZU0ZDL09iNmhTT0NaUnBrL3BXdDBncFBR?=
 =?utf-8?Q?w5vt+Nrg+liAJU2+CTObEugbcsrZT7VeGEUM03b?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0061244c-7d96-403d-2161-08d93651080d
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 14:13:10.6687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QRq7nf7ccU/7WC4RTnqgQNW7WESWwFrmqzd8b90WvMMZfeeq8czL07mKhUggJsOEk1DejUFm7lLR9XRUxkwlZdwzG/35ZWO4QBTIwUfX8Uc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5355
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10024
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 mlxscore=0
 spamscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106230083
X-Proofpoint-ORIG-GUID: 7VBl5syHkrgH4KJZn2Mn0WkRP_2Yt6xw
X-Proofpoint-GUID: 7VBl5syHkrgH4KJZn2Mn0WkRP_2Yt6xw
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lw3d5-009His-V9
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix GPF in diFree
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 6/6/21 9:24 AM, Pavel Skripkin wrote:
> Avoid passing inode with
> JFS_SBI(inode->i_sb)->ipimap == NULL to
> diFree()[1]. GFP will appear:

I'm a little curious how we get as far as creating and freeing 
non-special inodes if ipimap == NULL.

> 
> 	struct inode *ipimap = JFS_SBI(ip->i_sb)->ipimap;
> 	struct inomap *imap = JFS_IP(ipimap)->i_imap;
> 
> JFS_IP() will return invalid pointer when ipimap == NULL
> 
> Call Trace:
>   diFree+0x13d/0x2dc0 fs/jfs/jfs_imap.c:853 [1]
>   jfs_evict_inode+0x2c9/0x370 fs/jfs/inode.c:154
>   evict+0x2ed/0x750 fs/inode.c:578
>   iput_final fs/inode.c:1654 [inline]
>   iput.part.0+0x3fe/0x820 fs/inode.c:1680
>   iput+0x58/0x70 fs/inode.c:1670

Is there more to the stack trace? Is this part of a failed mount()?

> 
> Reported-and-tested-by: syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
> Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>ipimap == NULL

I don't doubt that this happened, so I'll apply the patch which is 
obviously safe.

> ---
>   fs/jfs/inode.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
> index 6f65bfa9f18d..b0eb9c85eea0 100644
> --- a/fs/jfs/inode.c
> +++ b/fs/jfs/inode.c
> @@ -151,7 +151,8 @@ void jfs_evict_inode(struct inode *inode)
>   			if (test_cflag(COMMIT_Freewmap, inode))
>   				jfs_free_zero_link(inode);
>   
> -			diFree(inode);
> +			if (JFS_SBI(inode->i_sb)->ipimap)
> +				diFree(inode);
>   
>   			/*
>   			 * Free the inode from the quota allocation.
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
