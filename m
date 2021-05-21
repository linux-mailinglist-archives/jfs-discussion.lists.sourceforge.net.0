Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1374438CA4E
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 May 2021 17:39:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lk7FE-0005Hp-IR; Fri, 21 May 2021 15:39:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1lk7FD-0005Hi-I5
 for jfs-discussion@lists.sourceforge.net; Fri, 21 May 2021 15:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:Cc:References:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+XBOBmG+F0c+Lt3vD0aMt+u98irjCYsFcfny0Zxgloc=; b=SFixe9qtSx1Q63sWNUKNmr1x9L
 WaVsIUTqo5XiK9VS/OXSj+kXL8ujoqLpbsyvntmnc0FZ15ATTDA2VF1fYSc9gUTxFDgDZwYYv74x5
 2mGUxpmmn3ViCdLAkose0ybFzrPty0wkiMkcDa8a8R/Qlelx7q0qhkAiTvKFIrKc7J0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:Cc:References:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+XBOBmG+F0c+Lt3vD0aMt+u98irjCYsFcfny0Zxgloc=; b=OmuG8oJ36CSu6HGWDGtpdzuWby
 0Y8ExG/IIhvCXdkvy5FXXUuKNyTuUKRhonGwz6VgB5szohAa3Sj8vynTBaoGqMaiS0+Zxi1UmhC2x
 15wT/6ZCHWpSiSowIaS6/+F+XYXNnLF9l6YUmRButyREhDdlUHM/tuagyHmardVKvzdY=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lk7F6-0000MT-FY
 for jfs-discussion@lists.sourceforge.net; Fri, 21 May 2021 15:39:24 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14LFPBpg152087;
 Fri, 21 May 2021 15:39:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : cc : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=+XBOBmG+F0c+Lt3vD0aMt+u98irjCYsFcfny0Zxgloc=;
 b=ymozNe+2gzIJUnpD3c+3fXYN2tIkc0GPLMrTNWp3pXbrNqudgYdcVS1A3fX1a4Y/IF/q
 YuJWbZYRkTN3GmAyertCvrnNVdV8TmAcn2nf77SQcZ1XkoSSKcH/f+mf36vgkxNMgoJP
 VLkqyttq9Ziv1BCiiRG8o3JT0N2beb4I3LZP/mCAt3z1lw3JAoXxX9hmGHTe/AiLpQ0n
 /Abe/a8cOyt6toGU5BA9MmzC80Lu65Sd40IhSQgEwdsVwzdt8ogZ6QKj5ax62FDMLMHn
 j3sgsDESFFdc9+HWELYGnF+8cejekcz6P59dxXSs34nGkax29f0riMYfzs5ZwNlklyyB gA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 38j68mr1c0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 21 May 2021 15:39:06 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14LFPlOu196189;
 Fri, 21 May 2021 15:39:05 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2177.outbound.protection.outlook.com [104.47.56.177])
 by aserp3030.oracle.com with ESMTP id 38meehv1vq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 21 May 2021 15:39:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LLoLV0rAIZ0saiW2kGEjFed9Cw2PoWwHjuXFTj5BBFNE7koYonMId8NyFFQHYu+2zXeJeY8Ukt9UVyNpjk+ECoyBuRw4T23NXcMgF7XSLCj1ShbluapHj0LfRF+OsyoZGp9+pCYP+vI7H0PEX5PtdxDScAEIdIg4Fsh+ECk8SGNOPoFtFclaXWqmo77OJFY7B2fx6qV5kwdiTqg+EDlHcb5LLBGB9IkauT9IuSefkBMPey5jq2dcbqPnW+ivTbxoJFifoZWMNaw+iS60r2nV3ypbbbABU0UMgJo9h62nXebGlOgMkGaDVtX60ccfmtwykZlUrv+F4y/wh4WI8Z1F+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+XBOBmG+F0c+Lt3vD0aMt+u98irjCYsFcfny0Zxgloc=;
 b=Gro/tVtlydI7/qRWi92IU1nUD0v8RqwyGPUOBBnUqT8szDqCHCGcO5fXEXKWGHXw+l5XvNfcUKL4l9Zb9O7FkHdorpzdIs411HwGUZt/P2UUoGEykNheg1zi+jpBE6iy1liDN9rmbFVW3GfHIbYiJ0Bv+qjWByoy6YAHCjKpKeXFlviNqPFxvkUOQ+hZcSSy3zSc8IJg+6SlsN/JJi27JYnGMVd0cnbM+/6anhPR8g4VpZl23k8J+n+0ZHIdEYYdovmTsOhbDBTno90/qixYzj7MiRe/6bFaNSQYUJFtWTk8RJWw63G7q8ID0p1IdhFuIwhEbo4mcfAvo5Oksu1HuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+XBOBmG+F0c+Lt3vD0aMt+u98irjCYsFcfny0Zxgloc=;
 b=Wf0YPQghBt0xF5gfyPTlYI7vepl56bYCkDnDooIn4jR7cZBnRM8nRsn9vIBLYMeowf3hynLV2UAHynmS7/KtlihYJMHLb+hcqTN0NqfQMkFIF962uvHpgtAC8hB+nX13l5VwEg7lBWXmnvuiD3CJ67Wko00qmgL/35dsrlkPzHE=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=oracle.com;
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH0PR10MB5386.namprd10.prod.outlook.com (2603:10b6:610:dd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.26; Fri, 21 May
 2021 15:39:04 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::5d0c:35a5:182d:4517]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::5d0c:35a5:182d:4517%6]) with mapi id 15.20.4129.034; Fri, 21 May 2021
 15:39:04 +0000
To: Huilong Deng <denghuilong@cdjrlc.com>
References: <20210521140008.51854-1-denghuilong@cdjrlc.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <1991eb48-9ce7-b2c3-8ddf-801728a50e11@oracle.com>
Date: Fri, 21 May 2021 10:39:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
In-Reply-To: <20210521140008.51854-1-denghuilong@cdjrlc.com>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SN7PR04CA0068.namprd04.prod.outlook.com
 (2603:10b6:806:121::13) To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SN7PR04CA0068.namprd04.prod.outlook.com (2603:10b6:806:121::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23 via Frontend
 Transport; Fri, 21 May 2021 15:39:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01b76c06-93c2-42e4-c931-08d91c6e9001
X-MS-TrafficTypeDiagnostic: CH0PR10MB5386:
X-Microsoft-Antispam-PRVS: <CH0PR10MB53869182B2EFD11365419B4287299@CH0PR10MB5386.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1824;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GD9Pzz2SlAMqxk56oNEqVPXqd+mUeL/PT2yUkgAHxJqNnUuYoo+7mA+o4fk9pj303MXRk271EOh1fVyWCCk9I2TTTxuwOvSBNt1+qfK3SBDe8oYZxhyYJwszFqB220Mg4Cw+6iZf9T3thzm7rB3iCsM55PLkA/Kbvi5igPa7iqw80yAr83XqW2hJX4JKFtc83MM95RzW4K7tiaUQeqLw38YJ1RicfcEN94+gccBnOifho7vimfPHM+QAI+cuJThZzX1P9GAm5VqyS+E6JYX8P992aNfxyA9qbsCeNROvH2hVi21MXo937p62vM+o+IAYymJUiSe1gkKiDElb9BJoJE0cUOE/MnPQQRCt6h1anXluNrVgVWVT+xDeqGJGpMcmEE0weCU94Dekxj0Zhue5sFh6z+BS12RQC4w+V07dWFNf3lmAm0FqxAemIavrH7FgGZYiAnz9B2MS+xWPDnHYzu/+LQWXktjpM7Ramfr53xwT1B1vIcICogimf36fY4xJLrgfjwGBAqi7qzMjUItcLt3waYgbw5QabLXgtjfqvcpg5RajIfPVkf3/5gnOgtd2NAlt4tZKUvjuehKj1I10vytDW/OERu52v6hWoNuzWx0x16IKJ6bYULULtPjgnrnY998CglOG+XOHRufQJATJPeDcWiNcEj1LKi1PNSxN37hrCma2Motd8/y3/rCxyO0T
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(136003)(366004)(39860400002)(346002)(316002)(2906002)(16576012)(5660300002)(36756003)(83380400001)(66556008)(186003)(4326008)(16526019)(6486002)(66476007)(66946007)(8936002)(6916009)(8676002)(26005)(38100700002)(86362001)(478600001)(31686004)(44832011)(31696002)(2616005)(956004)(53546011)(4744005)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?RnpQZTQxaFd0VDlkVVlnaG4yU21XeXhndjBqV0VxaEhJeldFbmFJek1TWDd3?=
 =?utf-8?B?TlgybzVnZWMyZDBTdkozV0JlMnJSMUw3alFXRlBwczVHOHFYMEtOdlFaQnlT?=
 =?utf-8?B?SnJUelJaTXZmMkhUQWVhcGdaY0xranlaR24xTWNuZmhlVG1HZUNQZFRCRSti?=
 =?utf-8?B?ZWxTYVpkR21hT0xPWUk2NWorTVBMaWZtaXRSQmhqQ2tLVktEK2NmQkZUbWxm?=
 =?utf-8?B?YnRJNDE0L3dIbnJ5dHhqVngwekcwTXJySVhydzhZRDdDbE0wVG5RL0Jja2lF?=
 =?utf-8?B?MXIycUJLV2NuRTQ0cUpBMEk1dFZ5TmxlZVdZTTJDQm5YUnNpMGRUcjRlalZC?=
 =?utf-8?B?M0sxYU12RllNQkI4UkhXMFdrVG5UZWFtL2QzQVdxdGRuZHVFN2Q4WkRCMHhK?=
 =?utf-8?B?SjdDVEdyMjlzN2JueVF2T29jdkFyRHcwZ0RhdlBlWmhsd1RYVjBWVlVTU2g0?=
 =?utf-8?B?TlV3cDhLSFovRlA2V0NLWnlQVldjc21BOVQ3R0lNQ28rdHRxenhJQy9XL29l?=
 =?utf-8?B?WTdMVXkwQjl1d1NtRXFxUUs0MnJDaWxsbDZyZFM3VStQdkEvNFVCOXBURCtI?=
 =?utf-8?B?TnZNckIzdU5mcmNVcDZ1YWtRWWxZazBGV290YW5yc2syQm5SNFJuNlJMRmlY?=
 =?utf-8?B?aXBjV3ZZMXMxcW9tUFB3UkhDbzMvM2Q2MTJYcWVVS1grSHd3SUh4cUVBazQ2?=
 =?utf-8?B?VStMNWtiYWE2SSs4RFB2ZFJDNmE0VFB6QkxFc2E0alp4TVhrU3p6bFJPQjBa?=
 =?utf-8?B?OFNyc1BZWjZ6RVdWcWU5Rnl2WlF1bHU2RnlYeS9lM0hZcGxvY2VaYzU3THA0?=
 =?utf-8?B?a2hnSnpSeE92QTNwam1SNVJlcWJXZk1xWHM3YlZqWCt3eml3TEE4V1lJVkJN?=
 =?utf-8?B?OTZpYzh0Nm9qYTRuaDk3dFQvVFV1RkZNTFZoMDNra2o5YjlOb0ZheXBCZFNF?=
 =?utf-8?B?UHZsNTVsUlZGR21HcU1QNmtqS21oNGJaUlFHN3liU1JTd3F6UjdmQUhwcExw?=
 =?utf-8?B?Q0hCOG03dU0reEIzS1licys0RmRRaVpwNXkwTllhOVRmbzZTSWw3QTdubUww?=
 =?utf-8?B?R0xqMitOZTltaEZUTm1uTFByR0t3OUkxRS9uVGRpMFFMbXdqcG1zRDF0Njc3?=
 =?utf-8?B?Qkpia3NyMSttZUVXSmVDT0w1OUNqcDdZNkpRVUJRSkJCRnJ2TlRvRUtqUDZS?=
 =?utf-8?B?TW1WU0JjVkVHTHErU25EWVNDck9uTnJQbFBCZFc3ZHRZaFZzVjNPZ2NydUdT?=
 =?utf-8?B?TFN6RzlBTUNSdVk3RXJsQkxobjU2V2NaTnltNVVYZ3BQT0o5WVNVSkg0NUtx?=
 =?utf-8?B?SEd5VHY1VXAzbHcxcUZFVi93eHFzbjl2WER6ZFVpdkZYQ2Zuc3dtbDQ2RDhu?=
 =?utf-8?B?V2pUU3IrTERlMVA5VmJVR08xYmZLNXEvNVRDeW5sVlNzTTIzT2VycG1HRElM?=
 =?utf-8?B?aUt1UXhpYUNpUktzMUV1RC95QkZmNDVJYkRPWVdQTDMzOUxOb0I3MUtWV2w0?=
 =?utf-8?B?TDgyMUdnenFlZXdLREtJUWNxSFNHY1ZXdlMrL1Z5VnlRcmdjalZzNHA2dzM4?=
 =?utf-8?B?aGMxTmtRMGg0OVZSY0pIZ0RYQUR2K2Fjb09wc0FkeG0wZ3dJK0hyVHc0Wkl2?=
 =?utf-8?B?QlZrTnBYNFk0TVFmOEZJRHQ4bDdlUmRTYXFlWWRtTGJ4anlod2FLNEpLWHZn?=
 =?utf-8?B?M1NvSG5USWs1K3BiUjNrS0FCNkN4T0JEWG9IeURXeFZOOGQ3RzdWelBCVTB4?=
 =?utf-8?Q?Sf8uF8oCZnx6xL5Ysd/d8biUorMThrPyX+EhboH?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01b76c06-93c2-42e4-c931-08d91c6e9001
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 15:39:03.9394 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9RnbZ692keyd/KmwG91qXVBl2fJX5ToCWKS22W0hR2i5tgNMfiR4iMEkJz5fkFAvhxns5c1o5mM/z2c0AN4wMV1ayAcDULBQ9Ux/PAsTR5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5386
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9990
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 adultscore=0
 phishscore=0 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105210084
X-Proofpoint-ORIG-GUID: FS4EVJuc-o1TbiSKjt99eKkq8blzyIIB
X-Proofpoint-GUID: FS4EVJuc-o1TbiSKjt99eKkq8blzyIIB
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9990
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999
 priorityscore=1501 impostorscore=0 suspectscore=0 clxscore=1011
 adultscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105210084
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cdjrlc.com]
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [141.146.126.78 listed in bl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lk7F6-0000MT-FY
Subject: Re: [Jfs-discussion] [PATCH] jfs: Remove trailing semicolon in
 macros
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
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Thanks Huilong.

I'll stage this for the next merge window.

Shaggy

On 5/21/21 9:00 AM, Huilong Deng wrote:
> Macros should not use a trailing semicolon.
> 
> Signed-off-by: Huilong Deng <denghuilong@cdjrlc.com>
> ---
>   fs/jfs/jfs_txnmgr.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
> index 053295cd7bc6..042bbe6d8ac2 100644
> --- a/fs/jfs/jfs_txnmgr.c
> +++ b/fs/jfs/jfs_txnmgr.c
> @@ -105,7 +105,7 @@ static DEFINE_SPINLOCK(jfsTxnLock);
>   #define TXN_LOCK()		spin_lock(&jfsTxnLock)
>   #define TXN_UNLOCK()		spin_unlock(&jfsTxnLock)
>   
> -#define LAZY_LOCK_INIT()	spin_lock_init(&TxAnchor.LazyLock);
> +#define LAZY_LOCK_INIT()	spin_lock_init(&TxAnchor.LazyLock)
>   #define LAZY_LOCK(flags)	spin_lock_irqsave(&TxAnchor.LazyLock, flags)
>   #define LAZY_UNLOCK(flags) spin_unlock_irqrestore(&TxAnchor.LazyLock, flags)
>   
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
