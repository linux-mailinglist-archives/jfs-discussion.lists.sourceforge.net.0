Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDOSER17n2lYcQQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Feb 2026 23:43:41 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9273619E6AC
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Feb 2026 23:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xvz1Pg9EAW8g2O7EHVrtB69pu5tXjvGwhO0NJq1ly5o=; b=hUzFX923sytW3jNKqnkFt0oAsU
	m2PCJCqbj/K4v6ZCqxs2K6ZWjgnOkx8Hw3NRqtlvlKS2alsZG8bTGSyd+QpNSwMcfHU3dXPTGBQf+
	nXEpdzO+2Ci83EpfMmwHSoVBxfur7qgY1snulEnGYBTGDWbt9suyW4Rfpl9mqM6EKR3k=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvNbD-0005d4-GJ;
	Wed, 25 Feb 2026 22:43:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tz2294@columbia.edu>) id 1vvNbC-0005cx-7T
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 22:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pDtBt1IUvockGTD9sAkNQUVYnZ2xavhQA7l7ZDVpiZY=; b=lLhuOP+g6ECK1XCMws9xNY8Isz
 9jdUiPdRpExl944XmmQfWLrMCC3nUK7VhrcPx5rXj1DZCabnGJLZqX4WLMC9m5otl2Qe3kpx5+IRO
 gYmpwPvZfuIC3NZd6pR+NVCE8YVazPwpqyMz4AcJXyNddqbGyRlzWmdB1/GeyGgVLX4Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pDtBt1IUvockGTD9sAkNQUVYnZ2xavhQA7l7ZDVpiZY=; b=bapT3d9bzxl2hj7MfxvXZQe2Ee
 eS5V0KX1Ca3iFkI+Xoo6P3u3JlPHAiOZiFrLN2bU3p7K8adDNGA9CeLfl91rndGI+VOIrR8OGx67i
 XMt8pqLngQloHyPYG5si+JqjGUoPMmWuAwEFlFc4aAb5HooTmP48nZ+AZtFrTq3XHMes=;
Received: from mx0b-00364e01.pphosted.com ([148.163.139.74])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvNbB-0005mP-JB for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 22:43:18 +0000
Received: from pps.filterd (m0499198.ppops.net [127.0.0.1])
 by mx0b-00364e01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61PMg3fu250390
 for <jfs-discussion@lists.sourceforge.net>; Wed, 25 Feb 2026 17:43:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pps01; bh=pDtB
 t1IUvockGTD9sAkNQUVYnZ2xavhQA7l7ZDVpiZY=; b=nsrj0T6HCt6fbehQN3aM
 mCW3EK4O0E/cM/Qy7KmXDptiP9Si3inQNFYIQScWj2MSnIVqk1bh6Ulf2iHVeiyG
 jOkKvI97CiUm8nbFeOE8ZSU6uEg9o21CwOqyT0zDJZaulMCy+81avk/zmfLBGPpH
 8zS2au6AvembXSGV6xYbFUcUF5MKKn8LhyrXp7Sf7rQ/fIjdSv01VirEFwBfgwbZ
 WZtyfKQt0yCgnh9sFSfrI9pnPAcpLvFJNu3YOATmrfvTleq6h4woEObun258q4a+
 8GChmZaWdoX1h6JiicGPjWZ3UYKC3TK6vAzSf9/FhEcslwYYazjWijqQesgqf0ma
 CA==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198])
 by mx0b-00364e01.pphosted.com (PPS) with ESMTPS id 4chywywhkc-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 17:43:11 -0500 (EST)
Received: by mail-yw1-f198.google.com with SMTP id
 00721157ae682-7942395ecc1so2979347b3.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 14:43:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772059391; cv=none;
 d=google.com; s=arc-20240605;
 b=VGr0wJqbPPlscHveAvuQG6JIagIw/UBhusmbhX2tljzTWZdhhlo2fTOSGobZ9GWoct
 w1/WuLSeqIsKKLQpg0Rn8gDSlZ1C+W5r6IDRgPHJyoiMLwU/jwbNmwsOQlKO4ECfcTS/
 qyq9cLb2aNAyiEuR6AqvYukHZOX9cP5PVWxe2fL+lHmvo3yPCEOqVP0amPR3WlI/31nc
 SFD7Zf1HM2Pjq9ufhm2jdCZgo7llgBZ19W+pilqh3MgHywL9IkyiNJpLdOLSvu9kteAR
 wswOTSSVFFP0CFYxW0nLwlaAhqiKvkpPFeS2TUF8ROJFWSxa/Zr4eJ51V4pv89sz+hEl
 wgjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=pDtBt1IUvockGTD9sAkNQUVYnZ2xavhQA7l7ZDVpiZY=;
 fh=PFTff/ir1Rzntzk1Jg0sVUyDAdHbGgbtWAkP7IhKBtQ=;
 b=kwyz5t8dYrl9x5xFGxdtSidHS2I6gCv1JbahFDJowlg7v6lr6zoN/KyYGHb7uB1JfI
 RwyL1fa+oPk5H23b8K2oMlEtXghNWcZ0f7EXAxGoYA0gs36pgp6ac+gsLudgo9R+iN/+
 1/fjSrpK+KF39FmmKg7qkNkwcAhTMk6CXtdSe4DKzM6f75s3Ytq2590AiiKE4kj1spNU
 Xv5euFIomF/xVZ2KGZV4SBd5IghBEZE6mjxR1F9eRiS5JT6MKxzmOSv7RMZ7XwVK8z2Z
 qdXGb7DAXG1cHw+GIUDil27D0ky7GiEM8be797vSnrzZI5ADPXX+7Mt5bqUAFYD7JpXF
 HVrg==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772059391; x=1772664191;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=pDtBt1IUvockGTD9sAkNQUVYnZ2xavhQA7l7ZDVpiZY=;
 b=PMST++tfaP0F6LRYnVkfvdRzzPqqgQcGcm5XmO6J9qxwDV8Rr3Xu3XmI4OfvXsqkRZ
 KgwY3gihXBdRnW72yTD5bGpRtYyGMc+sR5hJqbAT/+ioKX2QhGxd/qehpQIlpg5wqPHT
 5JUSVOS4JnqX2/YOu71z8tFenDdmaJh7MoQYOE7rK4xDTFxSTtd9Fg+NkAE1kI8x7JMX
 MYJ6C1ZwluNVbRAXA5C+hfvewthFnyPtYbhbWRaBzc81+xYwaEA6tvr0AIaZNQpr1s2H
 a9f9qcRMBdjxZzpDozBbH6MQkWH+iYzXJV6h/HzEQhGL26KYDPQmH9UWNutwQ8sCvUqr
 k4uA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUg94fH6LDm8jfb4MXyUe1DCwvzfWR20OKw+JJMC4XuFTpCgWfVouox249EMzM4YLZHtUx6hZLuM/X3aZ/+qw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyDIItmlnn2RkEk9P+DNmQQ2yBzh+Y6fEj6sXlWrQKaTZdwsh4e
 VLhvcPiF6x+IQev5CF8blCbd5k4tjuuGcOsE/sWzg+Cct1XVrsY19n+OXYBiApGOABiyfUvRX0n
 oF1eM3BezSf6iXF307PSaQqZ0aN0phyoynP38c/MNOvwT9kNSYzH/WJoAzIOTnfaap/K7cYEmIK
 MqNjAf5es81Fckojuq/PpNMO1Z2JGrsxTM0JInE6ym/XfKRt0=
X-Gm-Gg: ATEYQzy2y4lOeluwf24hHVN56bt837U4ficNIb+jJjk/C/jVaQ5PfLIFY5CZ88yQo7G
 JkoPA7MjY0TYV73ph0tMXwAuCMP6G3+CzBRQxBIgFBL77wbPEcWPDEpK/K9D+KBFehuZnsYm6oF
 G09jJs0TLg9Htd5S8Msu6cqBM0Gm0koAW0fncgvtOpu33eDNHPPV6Sesoht8MEcQBH4U3Ij/yM0
 7xhGSkv
X-Received: by 2002:a05:690c:4d8a:b0:794:e72a:f664 with SMTP id
 00721157ae682-7986ff6368dmr23925697b3.60.1772059391041; 
 Wed, 25 Feb 2026 14:43:11 -0800 (PST)
X-Received: by 2002:a05:690c:4d8a:b0:794:e72a:f664 with SMTP id
 00721157ae682-7986ff6368dmr23925517b3.60.1772059390662; Wed, 25 Feb 2026
 14:43:10 -0800 (PST)
MIME-Version: 1.0
References: <20260218-blk-dontcache-v1-1-fad6675ef71f@columbia.edu>
 <35866783-2312-4e31-904d-3746510eaf56@kernel.dk>
In-Reply-To: <35866783-2312-4e31-904d-3746510eaf56@kernel.dk>
Date: Wed, 25 Feb 2026 17:42:59 -0500
X-Gm-Features: AaiRm51munUdTrnZZ7c7FkAWOz4juVf_xR9vg2o7Xlz46s_YpnQLMylaXhWKvd8
Message-ID: <CAKha_so5z7S6vD-betDLr=GREewxnWxeK9qawhZq8yKt=TD2XA@mail.gmail.com>
To: Jens Axboe <axboe@kernel.dk>
X-Proofpoint-ORIG-GUID: UpYVwRT1hFM1OIK5rN2f8IIVfly5FLql
X-Authority-Analysis: v=2.4 cv=ccTfb3DM c=1 sm=1 tr=0 ts=699f7aff cx=c_pps
 a=g1v0Z557R90hA0UpD/5Yag==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=x7bEGLp0ZPQA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Da8U98TiO7q1upZEImrf:22
 a=BpGzv1V74M3SfeTrGa8v:22 a=VwQbUJbxAAAA:8 a=VNoZ5ujv9kIkDPz7VAoA:9
 a=QEXdDO2ut3YA:10 a=MFSWADHSvvjO3QEy5MdX:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDIxNyBTYWx0ZWRfXxXeCnhcDccWn
 /xSFb3qIf6mIiIWxZlcBnBI8YaAsNL57hPB50fchqf4/rCIL/MUXPeRO6mME3NFPmtpSxhd5R+c
 L8GkOW888IgpnfVmHqCKOKXuDzK00B8mFTdM6+iMJWS/d5KQLGmHS0IFbUlKo4aDh9SD38D3npJ
 nV3cBzlHUlYlkckQxosWA4v5VnKGW4W4AXlBlml8yHLcSHMgmQ8CfGNJqIvvevZXxgxTkjgz9ds
 u5JFPhapbyHL+g9BE93KNb3PDVApjQvYeCQMurkGyKDy+fNNA3gNb2Z5a7rzsKyYS4e1nwc9PGz
 xz3Eqk94hf1Wdl5yTQHNWiczJW1ij4XHxcfzd5h3YvbDtp3AX9mdYx9sgvhshdbPC8iwz4YWlW/
 pFGLCn4FmSb3M1Oi/fVoHtfPOsYpcIL06z7p7KgUT9td8dUWioVxDZL7ZWUzCGz6TQgzjgz3RD6
 ZdhpEKfrq0vwCpLouvA==
X-Proofpoint-GUID: UpYVwRT1hFM1OIK5rN2f8IIVfly5FLql
X-Proofpoint-Virus-Version: vendor=nai engine=6800 definitions=11712
 signatures=596818
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=10 adultscore=0 clxscore=1015 spamscore=0 impostorscore=10
 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 bulkscore=10
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250217
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Feb 19, 2026 at 10:24 AM Jens Axboe <axboe@kernel.dk>
 wrote: > On 2/18/26 2:13 PM, Tal Zussman wrote: > > Block device buffered
 reads and writes already pass through > > filemap_read() and iom [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vvNbB-0005mP-JB
Subject: Re: [Jfs-discussion] [PATCH RFC] block: enable RWF_DONTCACHE for
 block devices
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
From: Tal Zussman via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Tal Zussman <tz2294@columbia.edu>
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 linux-ext4@vger.kernel.org, Jan Kara <jack@suse.cz>,
 linux-block@vger.kernel.org, Yuezhang Mo <yuezhang.mo@sony.com>,
 ntfs3@lists.linux.dev, Bob Copeland <me@bobcopeland.com>,
 linux-kernel@vger.kernel.org, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-karma-devel@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 linux-fsdevel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 Namjae Jeon <linkinjeon@kernel.org>, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:axboe@kernel.dk,m:shaggy@kernel.org,m:brauner@kernel.org,m:linux-ext4@vger.kernel.org,m:jack@suse.cz,m:linux-block@vger.kernel.org,m:yuezhang.mo@sony.com,m:ntfs3@lists.linux.dev,m:me@bobcopeland.com,m:linux-kernel@vger.kernel.org,m:konishi.ryusuke@gmail.com,m:almaz.alexandrovich@paragon-software.com,m:linux-karma-devel@lists.sourceforge.net,m:linux-nilfs@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:aivazian.tigran@gmail.com,m:linux-fsdevel@vger.kernel.org,m:sj1557.seo@samsung.com,m:linkinjeon@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:konishiryusuke@gmail.com,m:aivaziantigran@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,suse.cz,sony.com,lists.linux.dev,bobcopeland.com,gmail.com,paragon-software.com,lists.sourceforge.net,zeniv.linux.org.uk,samsung.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,columbia.edu:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.979];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,columbia.edu:s=pps01];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[tz2294@columbia.edu];
	TAGGED_RCPT(0.00)[jfs-discussion];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,columbia.edu:replyto]
X-Rspamd-Queue-Id: 9273619E6AC
X-Rspamd-Action: no action

T24gVGh1LCBGZWIgMTksIDIwMjYgYXQgMTA6MjTigK9BTSBKZW5zIEF4Ym9lIDxheGJvZUBrZXJu
ZWwuZGs+IHdyb3RlOgo+IE9uIDIvMTgvMjYgMjoxMyBQTSwgVGFsIFp1c3NtYW4gd3JvdGU6Cj4g
PiBCbG9jayBkZXZpY2UgYnVmZmVyZWQgcmVhZHMgYW5kIHdyaXRlcyBhbHJlYWR5IHBhc3MgdGhy
b3VnaAo+ID4gZmlsZW1hcF9yZWFkKCkgYW5kIGlvbWFwX2ZpbGVfYnVmZmVyZWRfd3JpdGUoKSBy
ZXNwZWN0aXZlbHksIGJvdGggb2YKPiA+IHdoaWNoIGhhbmRsZSBJT0NCX0RPTlRDQUNIRS4gRW5h
YmxlIFJXRl9ET05UQ0FDSEUgZm9yIGJsb2NrIGRldmljZSBmaWxlcwo+ID4gYnkgc2V0dGluZyBG
T1BfRE9OVENBQ0hFIGluIGRlZl9ibGtfZm9wcy4KPiA+Cj4gPiBGb3IgQ09ORklHX0JVRkZFUl9I
RUFEIHBhdGhzLCB0aHJlYWQgdGhlIGtpb2NiIHRocm91Z2gKPiA+IGJsb2NrX3dyaXRlX2JlZ2lu
KCkgc28gdGhhdCBidWZmZXJfaGVhZC1iYXNlZCBJL08gY2FuIHVzZSBET05UQ0FDSEUKPiA+IGJl
aGF2aW9yIGFzIHdlbGwuIENhbGxlcnMgd2l0aG91dCBhIGtpb2NiIGNvbnRleHQgKGUuZy4gbmls
ZnMyIHJlY292ZXJ5KQo+ID4gcGFzcyBOVUxMLCB3aGljaCBwcmVzZXJ2ZXMgdGhlIGV4aXN0aW5n
IGJlaGF2aW9yLgo+ID4KPiA+IFRoaXMgc3VwcG9ydCBpcyB1c2VmdWwgZm9yIGRhdGFiYXNlcyB0
aGF0IG9wZXJhdGUgb24gcmF3IGJsb2NrIGRldmljZXMsCj4gPiBhbW9uZyBvdGhlciB1c2Vyc3Bh
Y2UgYXBwbGljYXRpb25zLgo+Cj4gT09PIHJpZ2h0IG5vdyBzbyBJJ2xsIHRha2UgYSByZWFsIGxv
b2sgd2hlbiBJJ20gYmFjaywgYnV0IHdoZW4gSQo+IG9yaWdpbmFsbHkgZGlkIHRoaXMgd29yaywg
aXQncyBub3QgdGhlIGlzc3VlIHNpZGUgdGhhdCdzIHRoZSBpc3N1ZS4gSXQncwo+IHRoZSBwcnVu
aW5nIGRvbmUgZnJvbSBjb21wbGV0aW9uIGNvbnRleHQsIGFuZCB5b3UgbmVlZCB0byBlbnN1cmUg
dGhhdCdzCj4gc2FuZSBjb250ZXh0IGZvciB0aGF0IChub24taXJxKS4KClRoYW5rcyBmb3IgdGFr
aW5nIGEgbG9vayEgVGhhdCB3YXMgdmVyeSBoZWxwZnVsIGZlZWRiYWNrLgpJIHNlbnQgb3V0IGEg
djIgaG9wZWZ1bGx5IGFkZHJlc3NpbmcgdGhhdCBoZXJlOgpodHRwczovL2xvcmUua2VybmVsLm9y
Zy9sa21sLzIwMjYwMjI1LWJsay1kb250Y2FjaGUtdjItMC03MGU3YWM0ZjcxMDhAY29sdW1iaWEu
ZWR1LwoKPiAtLQo+IEplbnMgQXhib2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
