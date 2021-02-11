Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1A9319175
	for <lists+jfs-discussion@lfdr.de>; Thu, 11 Feb 2021 18:50:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lAG6e-0005O9-AZ; Thu, 11 Feb 2021 17:50:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1lAG6c-0005Ni-PM
 for jfs-discussion@lists.sourceforge.net; Thu, 11 Feb 2021 17:50:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h/29uddYSg1ojgXTI7rWxe+96QmSvcVyeY7vZmWglyk=; b=Njc2HWo0y3rVSwK83eAv1ZuEg0
 CV6UqSvKPMujmsMXicCEvTyteB1l4LgA6Gfh92ulH/U2YelMtFCgWNj5ccAKR3CxSLV2yiXEsvD2A
 ifiYoUzELh6QTUteQbLr6vDeHFc3ntLhVNV2NGQd9od1FGbTyQNQdW33n3OnnDRtz3fo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h/29uddYSg1ojgXTI7rWxe+96QmSvcVyeY7vZmWglyk=; b=FOytTr69eLFWjz9bbWLfKSP6//
 PGlX74p1ODiwVuqgadiyZXi4WQ+bx910sKGkh0zfRPIjaPZ32ghT08AanAm3j/8DVzA8WZBWEwRBP
 YlrAqHQ22/zz57CK/MPqNAs2PHHxRpwSnCUD4VVm/tPSI2xNKaZe/S1V6xpYRzb3cH8c=;
Received: from userp2120.oracle.com ([156.151.31.85])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lAG6W-005JFq-GF
 for jfs-discussion@lists.sourceforge.net; Thu, 11 Feb 2021 17:50:18 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11BHho6B139539;
 Thu, 11 Feb 2021 17:50:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=h/29uddYSg1ojgXTI7rWxe+96QmSvcVyeY7vZmWglyk=;
 b=t4N22omcJfagqzpiHJw7iziKwGlVSxYdJEoeaCFYxTaEHUWVi4iHu6NfEGi0IAIyLpfX
 jv/FlOE868lzFUAWfkeSjvRvTRldW4xnVWwX/FwQTJbk/0gZN6+wNYISzKsdLdLRIb9H
 w9aWd70uA43qPUhQ+GK9sPnfQ8CM/zrzBM94eeYA9qNy69tNa9KDLNUhxaUEk/Wda0Xv
 jmA/GjXhQ9Tp7FxSp6U5WVhtEoM+BH2ttOLvORbMyEKyV5Jv2wEyJVI5E6K30r+h8Cub
 OviX9jxlU7MwLRITScji53Q/eMM0rILIZLKqdU0jkPDPodp1hNO7Fg1HlK9BA5+yXJ4O sQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 36hkrn8eex-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Feb 2021 17:50:04 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11BHj8uB100109;
 Thu, 11 Feb 2021 17:50:04 GMT
Received: from nam02-cy1-obe.outbound.protection.outlook.com
 (mail-cys01nam02lp2056.outbound.protection.outlook.com [104.47.37.56])
 by userp3030.oracle.com with ESMTP id 36j520bbrh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Feb 2021 17:50:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YpEyPOyHVFqp4viLw0BajumGJh2io4RWKyNsvY6zL+lFOtvliJ2d0wUSvgUuCin3pBd49hIaYd01oIQgLxQsXknNKeiVdSsyDb4oMmyY+9IisC25sBDLpvvU3IwL8siphCOE1uSpTlXOw5/ycwPlUdstiWuY/pBikHtRBjhISqs+Ie+c6MEDpt8M+mR4dpF7uq5K9wnwQ+tT3eA1cl10npX6tUw4nHdSThRkToH0xJ/bSLNVFMkjd8yX5I1YC2qPakJmG++9n6PxnLdU+FPFGokh2J6mGialuj+5N8ARJpVPddV0GsCJqnqu0p6eagfjSwrPWeyx+esLt/td9ipTnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h/29uddYSg1ojgXTI7rWxe+96QmSvcVyeY7vZmWglyk=;
 b=BtnBjVL/nfTMChEwwXsY/kYdrwdwTsQ+/ZgUmUHYPSizLl8JLLmx7CyHrMotlUOnJLi/ZiwI9CU2midDOWQPT+io7bqNnQGPCiZbyDcvHVctmWF6N21pQssn/CRNtZxCQJFYsoYEfkLynhbvdih01tDkaEqxnscYBFJ8ggIqyihivO4/ODYLyRq04eU+nd2jwUcKhR8amHD/l31OEK++71clGRosZDNYMpIyZn9o8g1nraUWLNGYfkiNaEyeBnelxLJ1DqYJ2gRo86DIiwIn90c/xL9K9qfWf0GnSC4KahwdsYyh2a4gNb3qVx8K/Oxx5keDQASDtIJEEFnNtNks8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h/29uddYSg1ojgXTI7rWxe+96QmSvcVyeY7vZmWglyk=;
 b=n5YOGErDVMY5j/SgvOXMcUJ3clzULorQE5IZeg1JLso2aJ0xsjeGNPtYi+20rRXNXfXsAPkwxVr3CSmHvB/3rUMvNdx2sBVqWAICIJWUzz8ExG9ZaGXZqq5P4MLkCgAwo8RtNTV+zwHip8mwEBdtiKc2MFSFt8lhNI1GqV/E+XU=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=oracle.com; 
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH2PR10MB4053.namprd10.prod.outlook.com (2603:10b6:610:a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27; Thu, 11 Feb
 2021 17:50:02 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac%7]) with mapi id 15.20.3846.025; Thu, 11 Feb 2021
 17:50:02 +0000
To: Colin King <colin.king@canonical.com>, jfs-discussion@lists.sourceforge.net
References: <20210211130108.171493-1-colin.king@canonical.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <5225934e-c3ea-9481-ba66-5a70dca8ba53@oracle.com>
Date: Thu, 11 Feb 2021 11:49:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210211130108.171493-1-colin.king@canonical.com>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SN2PR01CA0019.prod.exchangelabs.com (2603:10b6:804:2::29)
 To CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SN2PR01CA0019.prod.exchangelabs.com (2603:10b6:804:2::29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3846.26 via Frontend Transport; Thu, 11 Feb 2021 17:50:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5982452a-7fbe-45b8-e790-08d8ceb574ce
X-MS-TrafficTypeDiagnostic: CH2PR10MB4053:
X-Microsoft-Antispam-PRVS: <CH2PR10MB4053AE4D20588FEB6E42194A878C9@CH2PR10MB4053.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JmTWgenZHUCYu7OIPMvod4c+XbCAkfS8ms97x4OOFKDXPQw7rBrqTh+YTKJAU5QKjgGCbbJuSrnM63h9IdgKd+6VohvvsDP/i03g8klkOeXeCjxpXLRSv5X33bkxCsevF0PjbV9THaa3+0M3CJ741JC+W9N3H93usq/uX6auaVzYZPTaHxixMpTEepUbWnJ+cI7WTdWdEDR54Qo4EohEraMyYz61yMGi5A3F53cYtfz1zPWKuWP47YXpq8Xcm3ldHLRlCjJHZmk6ZgK7Af5qV6pea/12MInZJZV9IL54ouqxrLy3k3TG0UtbZ7fPbGpE26WI0HSkv1TwkzX/eUwL6hK2n4DOT9zbCP5bZNNTj378t6uR153zpgGkVnfGyGF4Zm6Zfqx1HicdmXZ3lPmz0lUGoLCCyGXQi8695ofTIObEEPgU6PKWGnsQ66NeAAFIvtVyZmqtRQzCwUQPDEhhwZHqbAarf9hKXl6Ov7qSwqFOypRUtOB8KSOc7GrGKzrtgvlxKvu0JbjDAaJqomgEpnJl9zNHdvcbXXif0KYJ+QglxNBoJRbKcJ8tOkPbjC+H
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(136003)(39860400002)(346002)(376002)(31686004)(6486002)(316002)(16576012)(5660300002)(83380400001)(36756003)(478600001)(186003)(66946007)(2906002)(956004)(53546011)(26005)(44832011)(86362001)(8676002)(2616005)(4326008)(31696002)(66476007)(16526019)(8936002)(66556008)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?R3JSVXRmRWtYOTBxOW91NUpXSDRXMUk1QTRWdEw5bXBLS0NTSENiSjU2RU5R?=
 =?utf-8?B?eFdxVnJVaWFEV3pKdHR2WnpmZzlza0xpLy9CUUQ0K1ovbkxYUHJIYzMrbktH?=
 =?utf-8?B?R1Q2ME85TTA0Ulh2S2lENXZpREI3UjJvejBPSzN2dUNmQnppM3pGUnNLRDc3?=
 =?utf-8?B?RndvU0pabHR5dWZFbGV1Z3J4bjk1Q3k2S2xvYkJnZXE0bUZIRVhFdEMzU1Zy?=
 =?utf-8?B?ZUVZcjBibUsyckxjeWJPdS93SVB4bTlDRk8wMk9yMHlzUlBLWnJBOC8rVVRy?=
 =?utf-8?B?YzNHTEJGWVhoNFRaa3crS2JhMVVSdFRyUmJMNHlWUGluMWhwQkJtczR4N2VY?=
 =?utf-8?B?ZDB6aGplbDRkUU9NRDhvTUU1eHdIQ094c2tySElRRUlyR2o1cFoybW1CVVNO?=
 =?utf-8?B?eXY4UG03S2Jlckhsa21ZeEdOZlpvWHZwWVQ4QmkyVit6UGRrc2NUNjBWTnY3?=
 =?utf-8?B?SzhTeWFJMTFFZTdNSWUyR2F3Z1NCVHJ5cDFMTG9pYXd3WDJPeHdmRlBxZnRm?=
 =?utf-8?B?V2xZRGE1Mk5IRzdqYlJURm9PckVlTlNRYThQM3oyamRiL3c0ZFlaVEtLL1R1?=
 =?utf-8?B?aGVHaFNFQkc5L282eVRlVldwaE9JT2RCWUxjMUhKZEJiVEhzTUJTMDJESjZp?=
 =?utf-8?B?Q2hEcEsycTdUZXFVUWluajREeGFoS2RxMlNGVGdGU204NDZwUitUK0ZRT1VL?=
 =?utf-8?B?byttNG9VdS9lZ0dySytrQzZPL2VqNnQ0cVFYQkxuVVlHaitCM3drZDRKRGsz?=
 =?utf-8?B?ZlJwWGZ5M09IaW0yY1J4UG5qR3N2VEcyM2o0Q0pEYVVMYmRJUGY2clN5MWo3?=
 =?utf-8?B?VGhPQmswOFU0M25FM0ZCWjRENUYyUmM2Y1pJaUhpdndjem96Z0UvQ2JHSjVG?=
 =?utf-8?B?QjFLT0VUSE5zem5VMnI1eFZORWd2THRyY29uSXB3a0FjWWlmdERjM3FVZzVw?=
 =?utf-8?B?NlRnTHE0RUhDM1pIUTNuRXdDSnIrVWdoU29ERzNLZ2RhcXRpNWx1UU0yTFBj?=
 =?utf-8?B?Y1hxemYvRnkyYmc3cXpYOGhEaUt6UzBPQ0pOWW9SalAxVnlXNkxqaGY1VnlP?=
 =?utf-8?B?OEhheE84aFRBRHlFZGs2NnNoSVRXUnlkM1VBcTMwWlhxK0xWSEtXNDhhN21w?=
 =?utf-8?B?aWlSdWR5R0NjMExuZHV2STFhblZKNGMwbmVqcFhKbzBsMjhNRk4wM2UvNW0z?=
 =?utf-8?B?eVpMVThhTzNGSVE2elAyRmphUjdCd08zSjBkTWlIZmdvR2RWUENFZ0s5VGth?=
 =?utf-8?B?bmNPR0wrU0dkTGtwMVVqWS9TUDZTWCsyTFBUanJwSDBybXBjblIrbExIdXNS?=
 =?utf-8?B?MW9KWGxyZkhGSENHajRaKzc5Rk52TEw1MEpZdEgyYVVpc001YzVZbCttdzB0?=
 =?utf-8?B?MmpCclBuL2M0MmY1eTMyRG1FckJibmZldHhJSWE0QUFWdHVCdnJpUUl6OWl2?=
 =?utf-8?B?MHdJTElZNEZUZzNiUWIzbWZ2anFVL1pOSkFNM0k5NlhMUjNLYWI2Y0VCNktr?=
 =?utf-8?B?MExwWi9hUGlsMUxSNFhZd040T1dVZVMyalhhcnFCSDNQT2NLcUlsSnF5UnNB?=
 =?utf-8?B?dUpEYUJvM2k4RUtRYm1yYWhqUkpTWFRvMUtPQi9kcTNYVU5mcDlMSDdtQTVt?=
 =?utf-8?B?NlBrRUFvVWRLU0tqOTZxdUFScmkvbUZiSEx6VEQ1NXBVVmFnSHhKOCswOFMx?=
 =?utf-8?B?d1VQaEhGQnp3ZHl3enZaYzJSRFZtMWFMYkM5alFiMzJpNEQ2dEN2V3FyVnBY?=
 =?utf-8?Q?9Fe5c3fQHkL1+fKD00lpohLSSZncQkC2EYVYjaU?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5982452a-7fbe-45b8-e790-08d8ceb574ce
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2021 17:50:02.3286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 229xvgK81bY0hulkQzjTCPokdMq9VmvkyvvK+svTqAFmuurv10Cd4+KGEAaNPsaXNpDWZgYJhsRGxA2L05r3uM9kxVTd2iRkC+DtwZAUYcI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4053
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9892
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 phishscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102110145
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9892
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0
 priorityscore=1501 bulkscore=0 spamscore=0 impostorscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 adultscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102110145
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lAG6W-005JFq-GF
Subject: Re: [Jfs-discussion] [PATCH][next][V2] fs/jfs: fix potential
 integer overflow on shift of a int
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/11/21 7:01 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The left shift of int 32 bit integer constant 1 is evaluated using 32 bit
> arithmetic and then assigned to a signed 64 bit integer. In the case where
> l2nb is 32 or more this can lead to an overflow.  Avoid this by shifting
> the value 1LL instead.
> 
> Addresses-Coverity: ("Uninitentional integer overflow")
> Fixes: b40c2e665cd5 ("fs/jfs: TRIM support for JFS Filesystem")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Looks good. I'll include it in the next jfs drop.

Thanks,
Shaggy

> ---
> 
> V2: shift 1LL rather than using BIT_ULL macro as suggested by
>      Dave Kleikamp.
> 
> ---
>   fs/jfs/jfs_dmap.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 94b7c1cb5ceb..7aee15608619 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -1656,7 +1656,7 @@ s64 dbDiscardAG(struct inode *ip, int agno, s64 minlen)
>   		} else if (rc == -ENOSPC) {
>   			/* search for next smaller log2 block */
>   			l2nb = BLKSTOL2(nblocks) - 1;
> -			nblocks = 1 << l2nb;
> +			nblocks = 1LL << l2nb;
>   		} else {
>   			/* Trim any already allocated blocks */
>   			jfs_error(bmp->db_ipbmap->i_sb, "-EIO\n");
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
