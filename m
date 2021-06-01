Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4173976B3
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Jun 2021 17:31:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lo6MO-0005Gi-FL; Tue, 01 Jun 2021 15:31:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1lo6MM-0005GH-7p
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Jun 2021 15:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VrzulyZpEph92htIJFeZlMPUmowtTPctjF/roRFKleQ=; b=dRrvF/uDe1XCNkVLOm3QU8SNVp
 nAJBFv6zv7yLIWpLRMSK8Qa+gPkjeP1nWfxyhSwmKG/5JZjelrp+qD8N3ZFavaa8pbsCuopox6Wnk
 G424LNpGaqYRlvQRk8I61SDYZ3GJn1EO/wr7KSSCFZh6MsPFWjjYzJ/qKucMHesfP74c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VrzulyZpEph92htIJFeZlMPUmowtTPctjF/roRFKleQ=; b=drkVga8QqELLeuoYlpgYxN5EcF
 QrbAmdgnMZ7qWQuS+vL5MdKz4EY6Igk3Eik//mcbKFGzAExKsLCDAvkPZ/UH8hodXqcFICXKfa44V
 GwVhDIbdI5+FPlNEaIzWz5GSEovuDDy47RAUe/cPGm0/teykH5eWzwoekOdbZxNIFRlA=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lo6MF-0000tx-PZ
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Jun 2021 15:31:14 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 151FUJGS128223;
 Tue, 1 Jun 2021 15:30:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=VrzulyZpEph92htIJFeZlMPUmowtTPctjF/roRFKleQ=;
 b=fBaNhazqViPHKl9Fv0BXlHDthegAmlJeblSJ5LWk/y+hWkbbhRpJXsZYw0HOCoE+SFv4
 x2sSoAz7vekX/FXhlRvCHipOAGkIBb3J6CZJBE3Q1qLsBx4KKPXLPEFM4MS46yssWl0h
 ISoLEuRSjxU2jLqQHDyWIZEwencXnhs/bo5NSPwUO7EUJ3oz/gUVAec0p4VBz8N8GKpP
 tWA3PlBPTRYeGnvE27DZNS0nBwMXVQ8wfns6kp+Q5oHPEiegGBq9Hnw4pMePL5aDXV4+
 KHtco5gVB6BaupIq2rJChf8bT7nUJJnpwExpuGCdga17uRQ9lfUHMzaJWEYVg2L1ZRAW QQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 38udjmnxcw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Jun 2021 15:30:55 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 151FGSmD051942;
 Tue, 1 Jun 2021 15:30:54 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
 by aserp3030.oracle.com with ESMTP id 38ubnd94k1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Jun 2021 15:30:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2vzVFJMZnAcAxwViANPJYUGf0HodMq3nsK7OaqURY4QuLYqe8htsloEKlrCkSQ0imYBkezAH1u+uupIpBgvAb6VKjqx8s7bpMxw509RevZpXclk1gBDHZiPr36U2bLwcpGtPRfYTxseil72EgiPV+ZS+uoMh0pyuxqeaWfQHx5S+xrxiHsqHGzoRYd0Rv3fJV/CidgwZMUpGH5newDhAuAAkbhhGkw7hcjPQmzdpc6LSDOCe6+pJFliapOX6+mFUQyFA8+XPBRLzI17X8wat7tPTMOpnplo8TzfX1HfL8AbfvontMtl+Zly13NQOi5UIXnew9/nebRa5lAKoqeF1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VrzulyZpEph92htIJFeZlMPUmowtTPctjF/roRFKleQ=;
 b=hbj0VQF89AewAKKou9J33N1HON1dyHVocVkOSz8y+mXSHbtYLunRVod5+RJNTd2pRcereiO7mmOL2yhKTfR+NDsjVnDThkUK+dcL06T2jClf/zIZIW7UOlLoF5R+pQz6jaXa6633sL3/WrvUIsSrmzDiY0dq1swEo44Kz8/UlLsi4uavJN18PgYIETgnKKCFIbpEzbg4VX3qu2UJBkAKcawYeH/JJY1Spc5MVzdtdgNpYXSjqbjLS9AZ6yvR+f6qSDgcozAbp10ciGnZqZ++k6UNUGOC0R9JKwx51rvUUxROr8+UH3K94svap5k8dQmPwlvOgymo54v5FEyIFsQ3Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VrzulyZpEph92htIJFeZlMPUmowtTPctjF/roRFKleQ=;
 b=ae2TlrlChcoCnbSnJ1//pJ2yKdXSvL2HsPlQuMnUpiqn1cOpd5VogmZKg4jzr4DWVya+LVF95n/Avmz5Euxotzmw2XAISMqLYFCfioM0AljZApIr8rxAA6W7P3Crfg1FT03h+F8OxvEoSdmPH84hd7O0sfS+l5pj9vo0FssgemE=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=oracle.com; 
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH2PR10MB4072.namprd10.prod.outlook.com (2603:10b6:610:c::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.24; Tue, 1 Jun
 2021 15:30:52 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::5d0c:35a5:182d:4517]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::5d0c:35a5:182d:4517%5]) with mapi id 15.20.4173.030; Tue, 1 Jun 2021
 15:30:52 +0000
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
References: <1622545630-19745-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <103f7053-409a-72c6-aae2-613d80b521d7@oracle.com>
Date: Tue, 1 Jun 2021 10:30:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
In-Reply-To: <1622545630-19745-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SN1PR12CA0068.namprd12.prod.outlook.com
 (2603:10b6:802:20::39) To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SN1PR12CA0068.namprd12.prod.outlook.com (2603:10b6:802:20::39) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.20 via Frontend Transport; Tue, 1 Jun 2021 15:30:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a7c4c953-6383-43e6-a883-08d925123d9e
X-MS-TrafficTypeDiagnostic: CH2PR10MB4072:
X-Microsoft-Antispam-PRVS: <CH2PR10MB40722D0A6AAAD77C60181320873E9@CH2PR10MB4072.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MN9ByP9rrOqXl2LQjToxEvVTCpnb2S7eLY4i6nQOLmTqlkiKlYXC7DsAguR/nNfx3t4NhrVhCEVnxduG8y0GsZkZtD7GZvRjj0kBeNJLg8zIfCBgCLkFdd2mxzfsnfm0dhzGtHqvUBVIs/z+3qcyZeojjwK/pd/789trbXsdtM/ApMPaWsE9IKMxTxbFGD/Vf4CEsWbeV80Gk5npogkXYp5Oqvsfd4Wb2N/QVEL0vP9v5AL0ciYlkG2pcq/KxYNMMNt/t8Nd16nYMt54/zjozFkNaXd8BP+xZgFo0w9+JGO2krVeA31gbpGaosR2Oj/WAktF+lTWvR9Ks5RCXVbHqPrfjoKJYD5lu7f6hXbLNen1HEKeI3YV9dNGnF1aEKCsqOxjB+ajuEyIJOv9b29ObCRuXoG+PlWoHEpd19Nrmwx5M7/wciD/TVJh+x6dEo71c9CV1s8NGhPQIFI5QX3FZSbVOyTeCiLnHoVkmh7+eo93GKIYxxlKjvkLVjFhhZybLKdhcI04E3UBxPIpxI/lptgOiFUgvldWg6FiIcGmnTsznb6k24GtUdiW1Ilhx/tae/O63bdWKognaM5RU+2aCCaZRYYkYtEWhimrKWX6hrJGyaW3gD/Zs1drlkUa4Ir1+20P38ZgZ/Gf1assLLlD6QNBjA8kQ62W9Qpjo0LB3jP7LX8VwMhvQ1Mo7y4w51Uh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(39860400002)(376002)(136003)(346002)(53546011)(2616005)(5660300002)(6486002)(956004)(38100700002)(31686004)(16526019)(186003)(4744005)(44832011)(36756003)(2906002)(8936002)(83380400001)(31696002)(86362001)(6916009)(8676002)(66476007)(26005)(66946007)(16576012)(4326008)(316002)(66556008)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NDBHaUVEQkw5N2NuVGptaWxvOFFLellwRnFXRFIvWUtZamwwSUozSWh3MWhR?=
 =?utf-8?B?VldSUDlscUI4WldrSjJrRXN0aVJwWHc4dkRKNDNQYWJCTk9oSGFSSmhXS3pi?=
 =?utf-8?B?M21RcTVObTlNMTJhemFLU0UxTTNiRzdPREY5U0dtMHczNGRCRTlvbTdDSkVC?=
 =?utf-8?B?eVN3TWU0NDhVdlM4RHVra2lWMmk2VG92QnJQQU0yaEJjbXlWWXo2WlFKZndR?=
 =?utf-8?B?MXR3K1NzSHlOYVVXTEtNSkFULzJBUm5rV3d5bTNUTjNxUitHbWk5WkhITlJ1?=
 =?utf-8?B?UlBNSW0wVXBraUZKK2k1cnYvUVJhSWJBV1VoQVJidVdiNUdYV0puNEYwaGhX?=
 =?utf-8?B?Q0Ztd2x2T3FwWmpoclVaL0p2eVRUYjR6a0lKQ1hYdHgyRHlnSTlKSUV6eXNy?=
 =?utf-8?B?Tkx1Y1BVU1NmcEFUaHl6bFpKZ1pQWlc2eVRHNVZZcFp0STNob01RdG9aSFlK?=
 =?utf-8?B?ZnhVQTNkb0ZyZUVzRFIzN0pBVTZndVluQVUvNEdaa1VKU2MzME9pWUpxMi9s?=
 =?utf-8?B?UzM1ZkZ6ZzF5UEFoRzd2YU1YbmdyL0poaWhrcTA4bDZySENIbGhjWEVmZWxW?=
 =?utf-8?B?ejNLTGwreXpDUWRhQi9YOEFod2s5SERCUUxSQ1psOEJRVURvL2hpUzNGU29s?=
 =?utf-8?B?Yi85MlNkZ2Z2RmVBMHFqOTBlZjYxSGlVb2xPanNqaFdWdDVuVUZrZ3RweFRj?=
 =?utf-8?B?K3krTSt2M2dsTENEOGZWaGIyMlJ3WVA2aGVZUy9haVpqSzVta2kzSXN3NXR2?=
 =?utf-8?B?QTMrRlBtbVFVRCtDUXFMVDRJYlNVVVlja29QY0kzVTZKemZsNko3cW9GTURK?=
 =?utf-8?B?cGorTVhHd3R3VVNtbW5zWG1aeGtNU2JyejhSdVBua282dlFMWkphTGJmUUt4?=
 =?utf-8?B?V2lMcmthQ21zSm1uNWQ2T2RTbGx4eWIwSStYZ0ExMUpXS0E4djFueVowMDBs?=
 =?utf-8?B?UUZqSk5FejZ6V1BtUEZjQ3h6dHJmSkQySktsNXcxU2l1VmsrNTBFb093UWEz?=
 =?utf-8?B?eDZSVUsxb1BsQUJRd2xSUnE3TUxwMTA0c3RNdUp0OGE4aU1OU1hMazQwczd4?=
 =?utf-8?B?V3RMNjZWSXVYeEpCU05qOHZibHhlSzMwSG9MWmxndlhGaStOcGN2c28xV3Bp?=
 =?utf-8?B?WThTRXEycitpVHhrL2JXd2dVS210dDJ2ZmdHdTZScDBMdlNIbU05R0xSUUt4?=
 =?utf-8?B?SmZxWUNLL1NSazJBUFAvL0pUR2lHRUNvWlBJaWFraVVrYkJWQWxxQ2REV1Fm?=
 =?utf-8?B?YjY3N2RaZGpPaUx1OThVWVd4aEpvaVdxZ1lPKzc0aGZwaG1Xdmt1QzQ2cXA3?=
 =?utf-8?B?SlFlbWJMdnJrcHc4cXpwbmdQNlB5TC9qYU44R3YzRnFUMEM5NElkMks1bTVn?=
 =?utf-8?B?czk5WldFS2RnUWNIK1BET0FsUkI2dVJyTEVjcStEQ2p5YUNwMFFLL2RHV3BC?=
 =?utf-8?B?dURUWHBqOU9GYjhlUzVab0E3Qkl6OXZNNVR5cVBHejlBRlpLTi90SlV0USt5?=
 =?utf-8?B?ZWRFTk5La3NEWUVodXFTN2hSOFhtdUNldTdVSHdFYVh1SCtxTExRU2VwUEtF?=
 =?utf-8?B?SVlVUU0rVFM0MXpjV25qUVRNcU9ka2EwT3J1eE16NElyV2g5akp3L25VRENp?=
 =?utf-8?B?STE2QWgyc2ViTmxERUczdzkyMkE4NUJjd3dZODFtVUY0enNyeHB4d3hVMVg5?=
 =?utf-8?B?ODlQU0tXYWNhc2FFeHpQMFcwUXhwSk9lcDlDWTNUb01MaE43eDgxZGVMeSs4?=
 =?utf-8?Q?vtUg9y5URbcmEBkZqZq8HN1RfjcDlSSOH6wlTwq?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7c4c953-6383-43e6-a883-08d925123d9e
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2021 15:30:52.5790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +AZC5wcR+lQOysxHO7/wzv9QXaDnkQVXjdqpMaf7h+mw58vE2OfIdNsuSjH6afEp0db/7rRqhD+gq+QK1MKmEUwP4256hBfpHz3NxLxlr8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4072
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10002
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 phishscore=0
 spamscore=0 malwarescore=0 mlxscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106010104
X-Proofpoint-GUID: TAfMDaLUOagKk2_Fp9WxGGUn6TbeNF7z
X-Proofpoint-ORIG-GUID: TAfMDaLUOagKk2_Fp9WxGGUn6TbeNF7z
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10002
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 impostorscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 adultscore=0 spamscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106010104
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 -0.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lo6MF-0000tx-PZ
Subject: Re: [Jfs-discussion] [PATCH] fs/jfs: Fix missing error code in
 lmLogInit()
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Good catch. I'll push this in the next merge window.

Thanks,
Shaggy

On 6/1/21 6:07 AM, Jiapeng Chong wrote:
> The error code is missing in this code scenario, add the error code
> '-EINVAL' to the return value 'rc.
> 
> Eliminate the follow smatch warning:
> 
> fs/jfs/jfs_logmgr.c:1327 lmLogInit() warn: missing error code 'rc'.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>   fs/jfs/jfs_logmgr.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
> index 9330eff21..78fd136 100644
> --- a/fs/jfs/jfs_logmgr.c
> +++ b/fs/jfs/jfs_logmgr.c
> @@ -1324,6 +1324,7 @@ int lmLogInit(struct jfs_log * log)
>   		} else {
>   			if (!uuid_equal(&logsuper->uuid, &log->uuid)) {
>   				jfs_warn("wrong uuid on JFS log device");
> +				rc = -EINVAL;
>   				goto errout20;
>   			}
>   			log->size = le32_to_cpu(logsuper->size);
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
