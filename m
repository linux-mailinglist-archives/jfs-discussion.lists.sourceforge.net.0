Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AAF8B23AC
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Apr 2024 16:14:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rzzrz-0001yW-U1;
	Thu, 25 Apr 2024 14:14:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1rzzry-0001yP-6m
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:14:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JeGAgWfrgQ6mLDLKIftHguABiF/EBWvOAZSSfczzoTw=; b=ZZMnt2LfW/IxahL/MTqxP8fJCj
 1Ls5oD2q01XszMy1DJGVmcl6XyjBe2B5N/zdzZ7tTsJkHIDt0Lm2j6Eq7gxZuVabFJWSJt7cEaR4+
 atZwAMawn9NIjAywImAmXPJKX3YZI0ZB4KcKRWAWyiI/PLrIjeK3K/RrC1CcWgmTyBwQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JeGAgWfrgQ6mLDLKIftHguABiF/EBWvOAZSSfczzoTw=; b=dEtJokhQOQ/K/EX+RWtQRP0t7w
 kYj3OF2VflIsqCaBJloeCxS/zsVou1/HUYCYu9izBwmpFZ+SXLSVcUZOGE5wOL77+mtrVKsAmMABx
 RbVoBBcm5r5udr/k+mUEeFy++mffyUF2tJUVJu0XOIUhJzNLXZi15IV6I5GJb+g/y+sM=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzzrw-0002tI-Fd for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:14:38 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 43PE6nQw007396; Thu, 25 Apr 2024 14:14:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=JeGAgWfrgQ6mLDLKIftHguABiF/EBWvOAZSSfczzoTw=;
 b=oVRlE9StWjQyyJYtMeUNNFO2maR/YXv/HM+Trv50CllGO5szNW7CX9EeEMbCKacgJHRO
 P8QUE4oS8IPxBUhnRvV4o0fBq9YBks52XCHtrFpyus5yZ54F7cDShU4z3buf2CAdFmhw
 M8cSTTB4CtdKducdPJbgDeIxCWTVr2RKBxzcBmt1RGRHUuUNU1NNhnFK3F15LttOw3Gt
 fUloqH50c9My9aA0hgd/OmFVf0wh6qrjQqn7bfrrx5nZrU71XyInur7W9WPNOSACMEIw
 iy9IT0eCOU2kPLaRoI4uGRe2CJIo9FqiEHfh+uVlZ4YNFL0AsaLXCvuxTNfCLoofR2o0 lQ== 
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3xm4a2kav2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Apr 2024 14:14:15 +0000
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 43PD1HNq001765; Thu, 25 Apr 2024 14:14:14 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3xm45b2pm5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Apr 2024 14:14:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DV6RK0yy9RR8mWAXAsAIVyEPooluk6ZqaASRCtYd9Q0UfOTHD/I1Mo6fNXZH7DgBLsxK/2RcUckLfR9gAtDQhZ/cChNmQ56f6T9OBoPafoPAYw+nhrezME0ygih7CXDZl1WZpn0JhF0W1Wmw+zKM8mFnUb0l2/jydIIF3ULH2aypAcvHJVmU9FKYPteUdXjHiPeRvnSNW95+MUxCocKuvwqvnB+PYVoYFkWxXozwsaZ0orCHDMlLrmJeOL3MaxmVY3iw1hak1h6zKZvXI7U/47fv8EEWUxZZIJivK+xbyD44TRaY2reYGCW8DNWcU5RWodkW5jEn1BslLFNdtVw2ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JeGAgWfrgQ6mLDLKIftHguABiF/EBWvOAZSSfczzoTw=;
 b=mhVCnHuK3zImmnRxaf10prgSc7gt/K5mQr4xavNxCtTpQ2+RzCPsBIAW0OZ0THIRepT6/RjqfRtcoAQBG7gtU7wxNJ0tFG8smX/udyn+xE9EwfoHMe+khbxkb4uWNtCmjRAXJbuKgPuYOIgyXrbHWgyVmlVoctxgzBkgr7cuxcRzlDk7wBFTnjhdUkviCueayjb6hxpCH5Q9S2HUtek8YzO69UVPolTc473D+354GuRj1tfLSQ2xbcQWHkkn4CVmHVVrOyZL1+S8XTCZ6R21+MeGt0GKGsdYwVGXbihRGsHJXpFCtc0TyVqvg2+OMWouCaEtdnGyQfSLTkRuIh/rWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JeGAgWfrgQ6mLDLKIftHguABiF/EBWvOAZSSfczzoTw=;
 b=nrVV8oStQrMfL7oXlSnUmZUv8+kyJEaiQp1Vx9qEcjoZbGWkOyzejt6WhVHLwEm9MAOArOj2wwKaHp698Nlwui9SEWF64zM99n4EchN/IJFo1QAsM9DmlXIjUqWHgfbwcIhlTRLJknIafmqdVyvp3vL22iUwtW+Jy3QqLfXoNTs=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by LV3PR10MB7984.namprd10.prod.outlook.com (2603:10b6:408:20d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.24; Thu, 25 Apr
 2024 14:14:12 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%3]) with mapi id 15.20.7472.044; Thu, 25 Apr 2024
 14:14:12 +0000
Message-ID: <f1a92175-29e1-467a-9334-9d5a9505660a@oracle.com>
Date: Thu, 25 Apr 2024 09:14:09 -0500
User-Agent: Mozilla Thunderbird
To: Jeongjun Park <aha310510@gmail.com>, willy@infradead.org
References: <ZipSO4ITxuy2faKx@casper.infradead.org>
 <20240425141038.47054-1-aha310510@gmail.com>
Content-Language: en-US
In-Reply-To: <20240425141038.47054-1-aha310510@gmail.com>
X-ClientProxiedBy: CH0PR03CA0386.namprd03.prod.outlook.com
 (2603:10b6:610:119::29) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|LV3PR10MB7984:EE_
X-MS-Office365-Filtering-Correlation-Id: 9354f457-4c42-4984-89fd-08dc6531faf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|7416005|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S0M0Rm0vc08zRzZSOG9YQmZWWUpscXZNTDh0eWpIcnpDYXFLWDRmVHJxQzJL?=
 =?utf-8?B?OTg3TE9EWGlhVk5pNW52S1ZLeXdDeU5SQmtJMkQzN2xTbk11Z0pxc2UxQ2xY?=
 =?utf-8?B?SFVFeGdVbXpnOGFRelpiWHRoUGJmeVJ6RUt5ZTlNMUR0eEJHUUI1LzJiY0xu?=
 =?utf-8?B?Z0l4WENVZ1NxSDEyQnN4OXJ5MmQwbVdaQzRROHdMY2h2ZWJndHcrSWwwY3ZT?=
 =?utf-8?B?a3pJc1VUTFpvWlkySUhEL0I5Qk9BaGZLV05UL256VE53dmZUMEtlbGJMZGpT?=
 =?utf-8?B?V0JRa2dsT2lQUW5zbW5FU05zWVVQSkJIUjg5Z0RvbXNIdFVqcWo4Uy8wcGlq?=
 =?utf-8?B?NWFQMEtQNlN1Wkx2MGV5SlJJVlA0eWw4YWJvV3Fadmx4ckFrN1ZpR3d1cGdp?=
 =?utf-8?B?YW1jSndCd01pd3BqOEZwNWhBeVpqcmdZMHFsdzhVSlpVSnVUb2RnbC9RRnlt?=
 =?utf-8?B?YWV5d1k5VW1KZzBsNm1Bc3piYTZPM0RvMWFsVEJmUERmaUp1RC9KWURGUW5D?=
 =?utf-8?B?eU80R1lOOGRYWWpBM3g2bG1lUnc3OUJHZUZQVGw1dTYybzRtclpVcXZsZGRL?=
 =?utf-8?B?em5sdSt1cmhvK2ovRmUyZ3c1aE1GM0k5YVFvOVhxZWxDaEIzbi9NODRvVURE?=
 =?utf-8?B?Qi81RXhVRGd2VG84SHdWNms4aGhRTU4vdjdpaElxYWVGRlg1Y1R4SU1SQ1da?=
 =?utf-8?B?SHFVUzNsZ2ZORHpkeitzYTd2TWNsUCtjOFlzTExEN1A0bUJXdnB0K3Z2M3Ri?=
 =?utf-8?B?eTlhNDVTalZuY2tmTmpMNUM2ZTZ1R1NWR2FMY085MmNNRE5lWGUwQlNUciti?=
 =?utf-8?B?NE94YVh1YWRJNndrYSs2SUpiaVJHaXJhOVNFaFpxekdTbHZEOWRFYWZFcXg5?=
 =?utf-8?B?ZjdxazNDRDNxdEx0WWdNT1BsRXh4KzZ5VHgraENsdU1YeHpHeHQ0c1l4QXVQ?=
 =?utf-8?B?ZXc4eHkvc2ltN1JOelJ0czFrSzlyWDFqTURaT2hYVU42dXlQUTN2Q3YwKzc0?=
 =?utf-8?B?ejJYMXBzNC8xQlhxWXgwL3pYbnlmSEEweVpCbExuMUlOZVhwSWI0eXA0OWY0?=
 =?utf-8?B?M3FRZmw1a0NJS1BZZkw4RC8zZnZ4TWJ3U1RtcUJUOFRpNUFyZFdrSkRaWVVj?=
 =?utf-8?B?cVM3MlRrc0NaUnRNYmk3RWNFckxwRmVqbklFZ0RnaXE2YklEdnJId2lZc2dn?=
 =?utf-8?B?VTVwT0JyYVhiVkswSFQ1aEdIQURaSHJld0tKSDFCR3NudmpYWmcxWkFyTEZu?=
 =?utf-8?B?bjZEbjNMSmpHWUdKZzZwaGV0cEhzdjVvVzFFd0YvTlpzL1VySzZNNGVsVDNj?=
 =?utf-8?B?Smp2dTNrcHZIbm1pNzZlL0pBN3FJcnA4QUl5VUxpM3NZeWh5b2ZQM2VDU3NM?=
 =?utf-8?B?V2dUM2lIMUc3K0Q0b1I5cTlsOUlXUmo0b2JKbGxjUnprekxDR3E5WTdsTS9T?=
 =?utf-8?B?S1dhVUhKZktRNi9Mb01oY3J6dERMRy85dXN5VzF2MENOZlhYOXVwVTBLWWxz?=
 =?utf-8?B?MHJzSm1lRzlnM3RrT25yanZCb2RsZXFuemZJa1hhTEtPTmp6QTVpaU1qR0pt?=
 =?utf-8?B?bnAvamdtWU0vZUNnQUJQcWN1S0VLTVhlSi96NzM3eXJEdG04RUo2VWVmOWZk?=
 =?utf-8?B?eDJXbjFTc0hIQjBNbDlhVFlNSGNwWUNYTjc1amhLQVRKV3l6VW9ReUQ0aGUw?=
 =?utf-8?B?bVRURU1iZkZOY2pEZEM5U1cvZjhTTFZoY3FaTFNlaWVxZXRnN0IwNkdBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VC95SVU5NTUvdEl6MnBGdExhR1FBU2FKaXAzTVdVSzNhNlp4cXR0dk1EdDhN?=
 =?utf-8?B?c1YyUEsvRU5VNEpUVVI0elZBZnQ3ZUF3ZWkrYmpIcndsU1FwM09pdFFRVGQv?=
 =?utf-8?B?SzI4MEV0UzJEbWlSOHc3a3ZXc3B6dCs3aldoV1lySXJWa3J4TDB5NzhKUFBo?=
 =?utf-8?B?UFR0TVVrSE5Kd1duL0pPTGx1RjNidEVvSllQM3kvcTAxWmtKdXhoMjJwdjBJ?=
 =?utf-8?B?Mm05SDJ0Z3hrZjkyVmJoNVlPV2ZzUlFDQlU2a1pTVUgxdDRPTHhhUi9BOC9I?=
 =?utf-8?B?L3AxTStEN2lzb25QUURBckVDSWYvaFVYT0w4NE9wOGlDMDRmVmtzcXkxMVAr?=
 =?utf-8?B?SDdQdk9LQ1U5T3dsMzgzMDNaN0NCcFpqSmQzbGx0bmIzSzUvbFQ5MkptWHQw?=
 =?utf-8?B?V1hhUmxQL0dDbTA1UGYwTDdjaTNORGMwdzBGOXFQWHR6Q2ZUZVJyclBnUDVs?=
 =?utf-8?B?UU52dzlINUhwM3JPSERjSVRVb0lsNlA4dk1VZTRWZVZ4WG9pUzV6Um5Tdkp4?=
 =?utf-8?B?bEtDMFl5YjNQUUw1dFBhS1dGV243aUxaZ2tpK21SZTFFaFdURHJra1BKR014?=
 =?utf-8?B?TkFZcUk0WVNzV2UvWHQ1dCtOSU5NNDBYcWYwUkxGRktMQXFPZjhZQVVBWWt4?=
 =?utf-8?B?OFhFaDFtbCtXTUVDZDlYbkZCVWFuY011b2tiUFp4N3FSRkZBK09TZGVQOS8x?=
 =?utf-8?B?NFZpdVBaN2pOTVgwK0U1d0JWY3E3THBqdFQ4YnFrUVRrakVXWXpQQ00raFlQ?=
 =?utf-8?B?WFBIMzBDTy9vRU5rZi9MdnJKRkFSSTBzeVRJbnJtNVNNWnluaDVzR21tTzFh?=
 =?utf-8?B?UkZpbGxEYVlnZExneU5qMmlHR0YrT3gxYXN3WWFrUzJOQ2hZeFlmS09RaEhm?=
 =?utf-8?B?RUZRYWl4Z1BGOEtuMzg5LzBvUGd5M0Z5TkhkRm5iLzYvNWt3TFlGUXJQSENs?=
 =?utf-8?B?YnhUVWJyempRMWdnaGNJcitKUTRXYVBtckVSNThyUE54d0MwOXJNL0pONlVT?=
 =?utf-8?B?SjJGd09vMGJDbUJpMnBMelhBeCt4TFpFVzBrQ2ZUMXhoUTNSSUhyRVhrUCtZ?=
 =?utf-8?B?c2x3ZWsyckZSSTNqNmtBN2J2KzIvbmE1NGxPTU0wY25pY2Z4MGJWTFYzODZX?=
 =?utf-8?B?R1BzYTVlSDB1QlpZTWY1MVlJZnczMHlVQVFUN3NFTnhkYmlMU2gxZER4M0to?=
 =?utf-8?B?bVNSMUp0clRKT1RMdzVJQW5DTVZlTmp2Q2dZY2NQdlNCbjdkVHplbStublhM?=
 =?utf-8?B?dGJBaXVuQnFmRC93eDJ0RWZ0bWJuU2oxRS8zdVpYRGh5endQa29nL0JjdmdZ?=
 =?utf-8?B?Tkd0SEpYMkVzSk1pVWk1M1Z6cEljZU4xV0RtVmJrcnhyeUVuVTdmVVFBNkxi?=
 =?utf-8?B?cmR3QzRvR1d5SWNUN1h2cVpBNWZDSHRQSi9YSm1iS0MzaFFXVmdWTi9WbzZJ?=
 =?utf-8?B?VEpQUXo3cTVCT1drek1tellKMTU1Uzh6VFpCN3ZQYUw4RmZoSnJvbVk2Unhm?=
 =?utf-8?B?WWdoVk92QTlhaFBaZ1JQSHhmQ1lacCsrQlBtcWxDTmdvVXZBQ2orcFYzbXp1?=
 =?utf-8?B?bDgrcVNYbGVhelNiOFhZNFduc1p2V3VzUVZ5ZzBwanFxNnZZK0Z5OWtuTUF6?=
 =?utf-8?B?TzZDd3JGNEw4a0RIdWRyWkN0WjIxSm45WXB5SC85YUNhdVd3K1QycjgwQ1c1?=
 =?utf-8?B?QjBQa1BURnhjZkZqUytDaFJ1SXBhK2d4M1hkUHZqdmt6bFEzU1lTZWNPY0ZY?=
 =?utf-8?B?MnorYzJZY1pvbjJZRTVEaXZhQ2daaDZoUnlmblhMUU82b2s3QVQwMW5OSWZY?=
 =?utf-8?B?UzRZOTZxcnZxVUh5MXdQdGY0by9yOGFoWmliT1pQMmtsemoxdWM3dTBpUzVk?=
 =?utf-8?B?Z0pmYkVreW9CQVdOdG9hSkNhQTh3dU5kWVVjSUlrVWY4ZXhSb0pveU5iN0Nu?=
 =?utf-8?B?blpoU3B1RGowaDY5bjcvYTJyK2xXVitGTjZ2ZUhENVdrZHNJRGpraGd4RW5o?=
 =?utf-8?B?ZHBoeHg3K2dHOUcrbksxeCtpVVFEZ3Q0cTVYanREZ3hUNWxPNFR4UGttclRH?=
 =?utf-8?B?MkFHbGxiY0hsZXNManI0UVhnVFVQWnZDZ1FTT2tudFZEbGpPRExwZzNycytS?=
 =?utf-8?B?ZkxmaklKbnUvcG1Bc0RVNXZ1ZmYyMTB3MVgzMFUrK29odE1ZZ0Z0b1V4SExF?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: wVKZvAWS6VAqtkEprj8hcy/mQP0BEJiGAmrZWzLCxRqvghREf6EKwjAU4oRxAlnuB4wuK7ngglQMDXOVK0erp300HUZlbZHJgLv9q/ZxiogWhDaXUjuQLNqPu1JblCbSL7OHMScpc6STGNmSYiXSgJLKyeloZ1YQs3GBhC4v9XdjDOJ2ZMtKH2arO/xCqm8lXouJ9vgQhgZsRRuZ9jd4MYNg8KvmqXiROu16ejn6YmGJq7pKYOS2FFq4W3oPQkFvsuu99T0jkkYmms1xtMwwjxVjvBOFyEVbNiFQM1D7XFPTXUFvgV/g6BMVjNNtb0gfbTC7Hdj01ojO2L0lbkOIrJ7UVJTH3/8ISTtLidyv/c69cM3aYb5Yb1AtgqprOtX4r022HTS/lOA+KT/2GgZZRCgf1BtBdc0M139a3l1N7kwefizpjtZkf4YWtHA1IFdADnQiwqZqvr8piGkfHY+D+U0s0SZZMJTU6m6Ir/L6mRje1ejcMLXL0a4VvqGcGifgT5BZcTf19FAW5wGIrLRWE4nNQ7xw1KKTfyp2t9SUyUxf563kisAlD4cren7YRx0hRJOwu0qDB6qX4zzc0o7duTR+0lweYaqwb539eBHsXPU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9354f457-4c42-4984-89fd-08dc6531faf3
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2024 14:14:12.0259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WqVDcm1Ph4lAtv8QTkptq46+0ItGNzNOaQ7r4Y4Aai+ZXlOevJiO6SHzuWlzYZZ61sCkLzhwXHMWkhXHChnNenUy/Jka++lBh0qSeGhKWI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB7984
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-25_14,2024-04-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2404250104
X-Proofpoint-GUID: jOrcP_kuTHOtTNfwC70Nvm1bKQxx3ulR
X-Proofpoint-ORIG-GUID: jOrcP_kuTHOtTNfwC70Nvm1bKQxx3ulR
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/25/24 9:10AM,
 Jeongjun Park wrote: > Matthew Wilcox wrote:
 >> If that's the problem then the correct place to detect & reject this is
 >> during mount, not at inode free time. > > I fixed the patc [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [205.220.165.32 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rzzrw-0002tI-Fd
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
Cc: shaggy@kernel.org, brauner@kernel.org, syzkaller-bugs@googlegroups.com,
 jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 4/25/24 9:10AM, Jeongjun Park wrote:
> Matthew Wilcox wrote:
>> If that's the problem then the correct place to detect & reject this is
>> during mount, not at inode free time.
> 
> I fixed the patch as you said. If you patch in this way, the
> file system will not be affected by the vulnerability at all
> due to the code structure.
> 
> Thanks.
> 
> ---
>   fs/jfs/jfs_imap.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 2ec35889ad24..ba0aa2f145cc 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -290,7 +290,7 @@ int diSync(struct inode *ipimap)
>   int diRead(struct inode *ip)
>   {
>   	struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
> -	int iagno, ino, extno, rc;
> +	int iagno, ino, extno, rc, agno;
>   	struct inode *ipimap;
>   	struct dinode *dp;
>   	struct iag *iagp;
> @@ -339,6 +339,9 @@ int diRead(struct inode *ip)
>   
>   	/* get the ag for the iag */
>   	agstart = le64_to_cpu(iagp->agstart);
> +	agno = BLKTOAG(agstart, JFS_SBI(ip->i_sb));
> +	if(agno >= MAXAG || agno < 0)
> +		return -EIO;

That's the right idea, but move the new code after the call to 
release_metapage().
>   
>   	release_metapage(mp);
>   


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
