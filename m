Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAF17B6C79
	for <lists+jfs-discussion@lfdr.de>; Tue,  3 Oct 2023 16:55:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qngnT-0001co-9Q;
	Tue, 03 Oct 2023 14:54:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qngnR-0001ci-Ac
 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Oct 2023 14:54:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3DSwQL8mfgu+Tf++qz/j+c94b162CWy/DKjIxG+qwhA=; b=E3ulx5rhn3wNX8gEifjkU8/rlS
 WrLV7e6cMnwJyHR2JCFy7f4CEnE73pZMQi3++NdPMpGy3FctZzvaHDumYl9P0281E2bMHmwDCT/Ah
 bKp+JsEPVzew6kDq6hw1BFydNzxQf8nLq2skTWgq3xgyzGdeTyL+FKYpIup8FSsmXy08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3DSwQL8mfgu+Tf++qz/j+c94b162CWy/DKjIxG+qwhA=; b=SO83IQpLX46Rkue06JMUbLeyWi
 FY5CJRHULT4MevCawRRPwBYbJ/oZPd1OuDFpE8X8Fts87ZzRBWPoeuo7pCnwXuP921qRVRA6m4fDD
 GWswqA712z3Mtb7UX+m3CBcsc+ReO+SDNoy+FyETuUc61+km5z3nNVZMU3Rt2ATYu6Tg=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qngnK-00HXGM-Ba for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Oct 2023 14:54:49 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 393Dwrhp010107; Tue, 3 Oct 2023 14:54:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=3DSwQL8mfgu+Tf++qz/j+c94b162CWy/DKjIxG+qwhA=;
 b=VjbAbrLLIBT63caJNk8BlyFS2hRPpdtVznudKemrjRSwPIjk3j2jtciF4qE856hjhTlY
 Xe+xJX/H4Jo29nHmXC7DsBg31megieQiAbf20py3FUuKllDyTc+a6hVQaj3m4Dore8Gr
 Q5DdvhtnAigPV0BpkydLhwa2UlIQpUPwp2x50pizla4hhhIWM+N9fCf9LQ3leRtLI5dj
 d/uSKPnr3E0ye9nt+Cxs0PmDVN09F6d6n/jCJ+ylPgSfyr+lqQu11fNbOkPvIzEARF4S
 0dBB/8KCqWd1K160Rn+QUgNuh3rprtT3P9zc6zU/2hqdfB5XhNPwQ+WIc5z2U5eNBGqt Mw== 
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3teb9ucww2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Oct 2023 14:54:33 +0000
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 393DvADQ005814; Tue, 3 Oct 2023 14:54:32 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3tea464yty-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Oct 2023 14:54:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mlj1x6olP6N4RC9Egi2UNfaRJ2QX9RfWqhJbqSpWprLsa8ehOXycNrI5CsXsle7LTy/7SKVCEeBfAIuf35B0m13UIbsBzeSsUC/5NZSBMujI0bjKJM0w5kO2WyOh3TAn1mosiEuD75Ir4SAb+JvxGE3ZFjQDHA2LYehWbXXWlUjxBUXq0YessYx1fItDYZttwzHGQ9+aVG0fh1BQGTH1musg8MRXAArdA0CtTwzpWftCyPH5+eaH1t4K9X7CHQXhRSrMOVQWcbCq0qJKokahyc7puByL5HqACq0QrBwnU706x7rpTvH660c8pvezvisChJxFxiSIEA4sn8Hz7GKOKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3DSwQL8mfgu+Tf++qz/j+c94b162CWy/DKjIxG+qwhA=;
 b=VgV2Cz3XjaQ6v9rf6IekMM9GhJdFWoznuFRxjAeeoovUPaqraWo6E0zSOZxksFf50oC84rA8GLnZQCVRYnUunwX1y3oUX0ezIHQhzywajxt74nU/JENUqC/HBtM6F6QC9c4FBUyukmiMiko7Xc38eVdlh2xozi9qxavtvtLJNPrahQxTqNXOyUf8WHlzx60EE1DTHSDxsBFhLDhpx0PbyFO/xi1q/9ySZuYxCT3yNMxQBblDLhnbFNfsQVmfi8mnQg7j/9zw59ZRzUcp3ALXSOHzvweWnCcrnIfmL3ixyVfpMJr6ETZPF1bInaUtPkmc9z2cYeHR2862nCg3Ug9UYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3DSwQL8mfgu+Tf++qz/j+c94b162CWy/DKjIxG+qwhA=;
 b=MvK4fg5z90sjXqz4rcD24MTJpXbbik7T1wZ4fC1zCB0n4FCnOIUNhhgNVPmU8bn0L2DOjddHLa+0SomRHReCR0K4ofQYEHEO0PiZkwdQGCRya4SVkoF8ib22/DTN1eHLmdbeSUZ4VjW3kX7qAzyWEBdS+r9rgYQCJ20qTehPozo=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by MW4PR10MB6485.namprd10.prod.outlook.com (2603:10b6:303:221::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.27; Tue, 3 Oct
 2023 14:54:28 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be%4]) with mapi id 15.20.6792.024; Tue, 3 Oct 2023
 14:54:28 +0000
Message-ID: <356b5866-792c-4c93-a2ce-01f15de49c01@oracle.com>
Date: Tue, 3 Oct 2023 09:54:25 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wedson Almeida Filho <wedsonaf@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, linux-fsdevel@vger.kernel.org
References: <20230930050033.41174-1-wedsonaf@gmail.com>
 <20230930050033.41174-17-wedsonaf@gmail.com>
In-Reply-To: <20230930050033.41174-17-wedsonaf@gmail.com>
X-ClientProxiedBy: CH2PR17CA0004.namprd17.prod.outlook.com
 (2603:10b6:610:53::14) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|MW4PR10MB6485:EE_
X-MS-Office365-Filtering-Correlation-Id: b093759e-c414-4b00-a7a3-08dbc420a46a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nHACzIfPRNT/gWnvJsniEbfkM0sFZ1Hu+5lMt6tDjf/uvU3qWtk41OPnwS0gwA60Pbw9nM6F/4lDGYnGKxbiWusLkbDyKsbN6Uid2/cKVWpn72U4Mzpx4IjE7t+72ELlINWtH5jCld6aaM2UvZbAIORrq5onynkx6V0bV6ZqRRy16Ebe36bVVUs0OeflNR+eNQ5um4O14FrGnt/CiioyvYAAx7zn0u/wcM70a7NmUszMWv5pBIN+u2nRr3MBkt0pXmwBlHSNu6/9I9Q1mBbUKn9ZQxBp1GO4qy0odXHMlKoZiPCtYJ09GvDGjcMhNdNaNHe9MkaTTMHnnONTEWxgNYCWyHcU5pPLX0zX9pAESbdz4MKBae1t25zQGxdaun0mWalVT2VfNS44F7VsiwA62QPDZKI5eOVecbJh/aAdHvBu7focdIfIBhe/qr5dAtVh3AcqFbjTQFDt3dE5StEpkE2U3TpvwsJZaJdKB6/05u700B4GEdvcsD0mCoO3yg8rls+8lCcmk5SzamefvzTIpWic1jAD4EOA/E4JQWLCWBMmcE3f2tB+7yp09sUGWonGjV6bnhfH9oq7E3TrR2dnJYWMKFZyLpW+6YOqdhJ2XYhdac06U163I85hp6GV3FLVWcvfsTKiqS9CXiJn4RRNPpDSpAG6z4aktJmrfQstkDc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(366004)(39860400002)(346002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(31686004)(4326008)(8936002)(8676002)(110136005)(2906002)(44832011)(26005)(41300700001)(478600001)(45080400002)(66946007)(66476007)(316002)(66556008)(5660300002)(6506007)(6666004)(6512007)(6486002)(36756003)(2616005)(38100700002)(86362001)(31696002)(83380400001)(142923001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnBRVHZlQnFVRUcwR09xQ3BnTS93VHdmcUxHdm1WM0JVWTNQT1d3L29yZHE2?=
 =?utf-8?B?LzVERmdVZnF0R2FxUWJRb1ArSkpmRzBrNkNRcGtjQVZQdWJ3YW41bDlFQUdS?=
 =?utf-8?B?OTAvd3lFYVR4ZCsvbGF1NkxZV00rWnhsWGl5TWVuZ3VJTnZlL3k5Rk9TNFlZ?=
 =?utf-8?B?ajdJZnA3MlFJeUxWQnpYTk8xVDZuUm83WE9HQnEvaXFFWDRPT2tuRkxIWGZJ?=
 =?utf-8?B?dmJZVWZaL0lSb29hUERidTI3M0VVYjhYZEI2aWlkbjdZTVN3TG93YWFhdit2?=
 =?utf-8?B?S1hkMnFybmdLNG5uS3J4RGNPZXpSQjhVVXFKRTVrd0c2eEk3bXRPM283RTB3?=
 =?utf-8?B?K3Q2MWpBTmdjZzRKM1NZLzZNZFJmL1hzckR0Z2ZaVEtpdWp2WmlndngwV29l?=
 =?utf-8?B?QUVWUXgzWTQxdVdBdjZvWmlybmcwMWtoeEErMCt5a2xaTURubCtCYmUyRGc5?=
 =?utf-8?B?OC8rakRuSklmelAyNEp4WmpmbWhVZHZvQVEvbko0NjJpMFhGS0dUejdvaHN5?=
 =?utf-8?B?YmNFNDk2azU2ckQ5Vzk0UnVJaWFheGp3YzYyRkNTSGVEZDdzKy82S25TL21y?=
 =?utf-8?B?TjRwWENMVk04UGhaYW4wUXpUUUMxa0JSQk9RT0hMbW5GWEpPWmJIY29kQkwz?=
 =?utf-8?B?SDBFVlpBcXJsNFFLYmFhQ0ZlZnJQMUROT3hiS1lLT2JaejdmWDd6Qjk2NXNY?=
 =?utf-8?B?d24ySkNRYUpodHF1VDE1UGV4Q3BMelhJK3JMWUNaQnhkUGNta2pCU3h1TThI?=
 =?utf-8?B?M0IrdXJ6Z3ZTSXFhVTVpVklJL0VYNy9WMURNcWwyR2M4eXlMa3hldWVhTldx?=
 =?utf-8?B?QVhuYUpjcGFQbHJGWDE5VjlpQUNla21VaWVCTS82OEoxVHU4MEtmbWdnVHR4?=
 =?utf-8?B?OTkrNGVuaG9VQW4xdW9qVEZYdVB4bml2M3ZZM3pTUm5aOHNQR0NlenZ3QVNh?=
 =?utf-8?B?SGlmM3ZjVUFvZU5jV1JWanZWL1E1US9XckxtNENBT2FieFNwNVNiRDdIMHk1?=
 =?utf-8?B?bkVFcG9obDBGZ3Nwd2ZiaTh0L2VOblpiRHdxVE9WT3ZHOXpmODFGdzFNM3Ey?=
 =?utf-8?B?ckVDelRNZnJyMDNTSXlldXBmR0RBYldtNDgyN3dUNmtxZ3ZJM05lNjFHOXg4?=
 =?utf-8?B?V1I3K1plbUdXQnc4T3Y0YkxIbjBvZVJYQldPZlhTR3hXc1l1OHgwdUZoaVF5?=
 =?utf-8?B?ZC8rK0dLZDAwck9rZFhUMTdjYWY3bkQ3TDFQVS9mZ1VhdmhqN2xYRkhLVUlm?=
 =?utf-8?B?eFk3eVpBZzZyczhyZXZDTm9PTXhibGlOSEdxUFRwaW95bjhWWWxyc3k3cFNC?=
 =?utf-8?B?c3BGQkl2QUdyR3pRVkZpQjVydUt3SVRpRGF2ckdmRzlSai9wNUlpMFlrUWUr?=
 =?utf-8?B?OTRnMVIyZWZrNTVzN3N6bVZJMnR0elRzNnEwcHg3RXZqSVc2aWZ0bG9nWXIr?=
 =?utf-8?B?NmVzQ3VtdVROekErV09TSGhrNUFuU1V3Y1NQaDIrYVBPWnNTeXhVUGVva2tl?=
 =?utf-8?B?R0h6MTRET2lSM3ZEamZ0b0JvWVNLMGpDUGlxYXJzVFc0Uml0N1doRllCdFNG?=
 =?utf-8?B?SURHWldDVS96VnRldmpJaUxYNWJGaFZjamVteFkzb0FwWlBIV0JjQ3lpSkd1?=
 =?utf-8?B?bitPNTdPakt6MnUwa2MyQ2JpNVZKR0ZWSUdRaG5LcU5pQmRLc0ZQeUg2eXNT?=
 =?utf-8?B?bGY5cGZxZDAvRWNaMTAwenl5TmNRVGxVaWRGVUM0U05RTFJGczY3M3lIQkFq?=
 =?utf-8?B?Wk5ZYnlTeTJHZmo2QW1EK2lrMnh3bUU0WDF3ZElPUG43aHhLbEI4OUFyN01z?=
 =?utf-8?B?Y0p1d1ZpQXVWcW9RaDErODdvSk51VzJNdTNDM3ZIZENOMlFhS1JHSkp0WENS?=
 =?utf-8?B?RHJ3S09HQnQ4THlvbG9BdGo4VjBlZktzdTFzSWZFSDBneVVILzdrcEk2RDl1?=
 =?utf-8?B?Y2N2ZDU0WFJwZ0JhczZQSEFIcm4vQXNsTVpXWGJpY04vTGVPeXZmYjJPZmxr?=
 =?utf-8?B?YTk0cFFYMEdXWXlqa3NJZE5WcWpscXhPV1RmQjRPTkJDcVZCN3JtWFZCL3Bs?=
 =?utf-8?B?aWZkRHJvSlJYTEhoMzFYcGFIWkdRcmJGT1lxUG83WkZVK1haam1ZQmVaTTlR?=
 =?utf-8?B?R2YzWk9EN3hTK1p2bS96ZitwQlpER3dUV29HZlByUEJNb2RTQUIya3poVWUw?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?a0JyTTE3bWwvazVIdmRNbWZRQjFCamNZUlNhZzVwVTBUdkxnbGFtRXlNZGVm?=
 =?utf-8?B?Tk0zZlVmSFNTOUUrVmZ5R202UGJyRkRvdHo4QVZYUkNsZjI5by9qZHg4SGZ0?=
 =?utf-8?B?bFFMN2U0S3N4czM2WjNaK1lLemdvck5mWFZKbWtwV1I0S1NLT052YmEvbzYv?=
 =?utf-8?B?Um9vSm13ZnQ3K2pjRlIxOFMxa01oMTJHSjNsQ1Ztbk5GL0JSRXB3RFZHck9v?=
 =?utf-8?B?VGFRa2xlTzJieVpQbzZFUVB1cTUvOEpLQnBwUktCZEE4YXhrZ21EVGc4TExu?=
 =?utf-8?B?ZWlveCt0eXM4eVlhQkpqMmVxTnFCdXlTRlhLRFRDYktrcXphOTFzcHA5WHJr?=
 =?utf-8?B?dTJtMk0veWJJaUNONEJqMVJpbktZdHJ0bDdWbFdaRTF4U0M2MTIxcEEzdFMz?=
 =?utf-8?B?KzJOc3ZXTDk3VlN2NlZuY2ZoWnlHYTdZRkFRd2xSUmE0bFh6ZmhpaEhsY1h5?=
 =?utf-8?B?ZXpKdHRDbnhlOXI3M0s5bkJPMjNjaHhJdDdpeHlJdW4xUXRDYjQrTldRL2FQ?=
 =?utf-8?B?WVRiVG9zRTMxV1JKUjRVZkxJbGNRVTVFUmQyRHRhdlo0b29tQnBFVURCMmVR?=
 =?utf-8?B?QTF1alNNLzBsdUIvaU5LUVpraE1KVDdjdXF5UkJXUmdnWGRuV0wzelpPbUNG?=
 =?utf-8?B?dVErZXdSd01JbjBmcllIMjdEL2xXN3pCSTMybGRlWFJ0Q25mUk1PSnM1ZnpR?=
 =?utf-8?B?MzlJUE4ySXoyNFVvL1BJQjBmNGhLeXdRckJtYlVJcUtWNHpHdlg5YjZnQVBC?=
 =?utf-8?B?d1U5S1VWclY3WHlmaytiY1ZPT1lUQmNxL3MwWlIxTFFYZHlwS0ZSQUk4UE1K?=
 =?utf-8?B?SzRqeWJRVmxWNlZ0UXk5K2dJczJWSzUxQUxoeHBRT3AzOHhrOW9ueEpBMXl0?=
 =?utf-8?B?Z3YrL00zN2hJZFRWTE9hcmllYVVyY1d2U0UxU2hBVkRYLzRDczhlUWdmVXEr?=
 =?utf-8?B?T29OdEUxWHI5Z2k1MklVMkZUZDJwQVU2d2RHbGlucU5xd1FmaCt1QVU4US9s?=
 =?utf-8?B?VU9OVFpiVjRmUkFWZ2hhcUprZTJJM29LazFwMERaVXBtMzFFRWpLQkREbVRQ?=
 =?utf-8?B?Yjd6YjNTWEZKVDhQOHVhb2tXeXBqb3R3b3EyTGc5MHpUOE85NVpxamhDRHV6?=
 =?utf-8?B?TnR5Z3p6bVB6YkROblI1YWNqMDVzUC9VdWZuM0thTHpkWU1HT2M2TjAvS2RQ?=
 =?utf-8?B?MDNieFhWMUVFWUJ3dWRIL21sZmlZYVRDUmhoRng1cjkrZ3orNUJsUnJPb2xt?=
 =?utf-8?B?R0M5NjR3WVFtT2JOSjJtck5DSGFocm9IR3pab2lyaHczaUVXdz09?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b093759e-c414-4b00-a7a3-08dbc420a46a
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 14:54:28.1823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QbDKgMVlIKAb5A/acM+hv+FJu2uk0Hftsx2fCjafPg19jvt9nyMR4sEOdBCdOZnd4den9m0tCtKyNEg2FoETj8EOEm082ux5ZXJpvoGV+MA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB6485
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_12,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 bulkscore=0
 adultscore=0 mlxlogscore=999 phishscore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310030110
X-Proofpoint-ORIG-GUID: weG1XBmgjV6e-VBOJP8WmkZCLe1ntAMS
X-Proofpoint-GUID: weG1XBmgjV6e-VBOJP8WmkZCLe1ntAMS
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/30/23 12:00AM,
 Wedson Almeida Filho wrote: > From: Wedson
 Almeida Filho <walmeida@microsoft.com> > > This makes it harder for accidental
 or malicious changes to > jfs_xattr_handlers at runtime. > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qngnK-00HXGM-Ba
Subject: Re: [Jfs-discussion] [PATCH 16/29] jfs: move jfs_xattr_handlers to
 .rodata
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
From: Dave Kleikamp via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Kleikamp <dave.kleikamp@oracle.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Wedson Almeida Filho <walmeida@microsoft.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 9/30/23 12:00AM, Wedson Almeida Filho wrote:
> From: Wedson Almeida Filho <walmeida@microsoft.com>
> 
> This makes it harder for accidental or malicious changes to
> jfs_xattr_handlers at runtime.
> 
> Cc: Dave Kleikamp <shaggy@kernel.org>
> Cc: jfs-discussion@lists.sourceforge.net
> Signed-off-by: Wedson Almeida Filho <walmeida@microsoft.com>

Reviewed-by: Dave Kleikamp <dave.kleikamp@oracle.com>

> ---
>   fs/jfs/jfs_xattr.h | 2 +-
>   fs/jfs/xattr.c     | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/jfs/jfs_xattr.h b/fs/jfs/jfs_xattr.h
> index 0d33816d251d..ec67d8554d2c 100644
> --- a/fs/jfs/jfs_xattr.h
> +++ b/fs/jfs/jfs_xattr.h
> @@ -46,7 +46,7 @@ extern int __jfs_setxattr(tid_t, struct inode *, const char *, const void *,
>   extern ssize_t __jfs_getxattr(struct inode *, const char *, void *, size_t);
>   extern ssize_t jfs_listxattr(struct dentry *, char *, size_t);
>   
> -extern const struct xattr_handler *jfs_xattr_handlers[];
> +extern const struct xattr_handler * const jfs_xattr_handlers[];
>   
>   #ifdef CONFIG_JFS_SECURITY
>   extern int jfs_init_security(tid_t, struct inode *, struct inode *,
> diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
> index 931e50018f88..001c900a2b4d 100644
> --- a/fs/jfs/xattr.c
> +++ b/fs/jfs/xattr.c
> @@ -985,7 +985,7 @@ static const struct xattr_handler jfs_trusted_xattr_handler = {
>   	.set = jfs_xattr_set,
>   };
>   
> -const struct xattr_handler *jfs_xattr_handlers[] = {
> +const struct xattr_handler * const jfs_xattr_handlers[] = {
>   	&jfs_os2_xattr_handler,
>   	&jfs_user_xattr_handler,
>   	&jfs_security_xattr_handler,


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
