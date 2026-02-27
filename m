Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WL+bLkfpoGnpnwQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 Feb 2026 01:45:59 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CED1B14AA
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 Feb 2026 01:45:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t+duCrU6OfEnnTBRfVqxON2RX52LrmhLEpmIG/YAQBk=; b=WXnq1NeZCv7rAZeAyq4BtNxmx4
	eMExzwPGPeo2n6UdTIgeNHZ0CHjMPTg6nGUKqAwk6Qi7+k3z09EXCaSaR9roPJsANKvlNJBKud6oh
	HAwDKux2bB0Bs/lgwD+t8/4p7zCb2LoMWZPGmq6KRCFHg8mxCCuiU8NjUn79z2vlubow=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvlyV-0005tv-Kc;
	Fri, 27 Feb 2026 00:45:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tz2294@columbia.edu>) id 1vvlyR-0005tJ-8q
 for jfs-discussion@lists.sourceforge.net;
 Fri, 27 Feb 2026 00:44:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X7pDkBpYJ27xEgY18ooGDGOhBD+yHFwQylYRdDgNI+M=; b=GhnzZiLM3ZzPPqAPXd5jwcaYcm
 Z8xh+zaPqIIVXTZU0I1j9Hm10X/R/52/tVbZnvUvlStl0Ku1qD3MTkrjGMB06D0DNCisQ3CC+AXIB
 gyBdKoxFuelQTW4CpChpZquYfJb3G0ykHvDT2Lmm9+DdYJOU6QVTTCPHM5OOL2+1ErNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X7pDkBpYJ27xEgY18ooGDGOhBD+yHFwQylYRdDgNI+M=; b=IpVAay6ix3ljfDXk+kAijdyEzE
 FBxvyfu30+8TbPVtPpr4KTRtxgvQ9MFPMljmw1O2K1Tti+g/18S5ejvhq2vIfQ/sv7UpRPXRGvfeD
 tIPrH1I9/jSoTSKz42gUyjDPRfRGlSYpuNsIUdMaygahE5atJqcsIyDyhIWVMq1E0Hb8=;
Received: from mx0b-00364e01.pphosted.com ([148.163.139.74])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvlyR-00053k-JP for jfs-discussion@lists.sourceforge.net;
 Fri, 27 Feb 2026 00:44:55 +0000
Received: from pps.filterd (m0499198.ppops.net [127.0.0.1])
 by mx0b-00364e01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61R0RDvv3740872
 for <jfs-discussion@lists.sourceforge.net>; Thu, 26 Feb 2026 19:44:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pps01; bh=X7pD
 kBpYJ27xEgY18ooGDGOhBD+yHFwQylYRdDgNI+M=; b=i1OndWU+3hVbPOhJLPdB
 3dZ4nSkztb1ikKbvdbatjVGkVMLfV8JFZoIoELwMzvOYxfwUR6nLGakr/qfu4h1Q
 GO8wKJ8wC4UazfM1LbiYLaf16jQ5TxOebgu7QRs3IVlvCrkOwzJVdNdZd6DNe2SA
 UyzFa/gtDwTBn+WHSFtqboptIKXNMRyDXiRy1/HJUeBhpCt4ysnry1Waeo2FSSbr
 T44fjXhU7o2QxsSczc0EG487y0F+MHbUzU5UXRAbhPw2wSNZ/rXct8p9OvNCLgVx
 J8CkKDZsIksblH1voMgwtFzQHi7YdkePQnLp9goufCO+S9tQvuISr4koC2RoM7Sx
 xw==
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197])
 by mx0b-00364e01.pphosted.com (PPS) with ESMTPS id 4cjhx874fv-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 26 Feb 2026 19:44:49 -0500 (EST)
Received: by mail-yw1-f197.google.com with SMTP id
 00721157ae682-7962f1424d2so29441067b3.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 26 Feb 2026 16:44:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772153089; cv=none;
 d=google.com; s=arc-20240605;
 b=lYk7J7zwkOVk4nc6f6cR9ILqJ6WFsANiBWDN/Zy6NIjgSZJZzqRKNfeo/GasloOihi
 8cChkGqDiDC1nrEo9Per0vCfSZT5ZyJlXYaZhpGkkE4XT5petqIqKl2Z5q4N+C4ONg2D
 MAgSU4beb24aed1lMD941+0VdIclofJqs3vCwFUszlRiALvmTHvI446HRRcJuhxFFC9U
 ceDPKhR8fEu+hpS2/24JgjGH8HyaGUfbENnDT+3+r4UvPNt43PM1IqALc/nJyhlXZicZ
 TV/dJ0rYUg5OW9uRh1fmDnKyJkKKZbshVxEBgh/l8WnNdXsKZN1YsQlqqxOISfNhVN4M
 L+qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=X7pDkBpYJ27xEgY18ooGDGOhBD+yHFwQylYRdDgNI+M=;
 fh=uj1p2OkKWQgIeL2s7mX93swj9k5Qbw+En/K5Wew64a8=;
 b=bPJwPCWzHw3KbLdxnzfK6BRPt7pTaEQl+YoEz7gnWOtbRG/jYCoeWkJsrqvsysDczj
 pXf9Im8x7q2EIXwyF/kEt+Xx7nMYIiml4tcwIEZeeStbnuw3SWJXKyjyVl2RCdzzJsLS
 FKWUh0o68HsQILE1bL5BJo/a1yqgBvaDPiA+wT6f7p9bvZgDxh6CSNx1BmusQA7NzvhO
 g7VjNtFIqJFyEebvKYMhvh417brNnEqfOj3X3EDbUpjH+9BzoDXbZ8zGG8MUc4EVRFAT
 ey8V7oJ06i8mcDdP51irPASzOSl5MrGDfvEvoMciBRBwmOv7jgz9DWZLG2WR80U3XHLA
 mTMQ==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772153089; x=1772757889;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=X7pDkBpYJ27xEgY18ooGDGOhBD+yHFwQylYRdDgNI+M=;
 b=rMT/5cAOOTPvpBZd0iwC3C67652bGbpowEpk9dBwJ9hytHIYUCghPghA7y4l88HbEH
 vx8Wlvs39tnWSb+4yRdFwpI1k77Grr/1aC4fmvbRd+UuIPABetYX0GG+A2KWmNOeSxNt
 2I2cDahK3HDhjhi2ZGYmcma2RQ5O5ZJRsn4Na7pG7EhT1HQzVHH4W6Z2g7seqTQj9+QK
 vVhBbMe8UrIok0kW3tCqjZEIM3lbCv7LL0DqUf6qFV3BeJykv4oicROmsanASHZm9GpL
 meyUucrwpweHLyuaKCXe0VpDsbOxcZtZA8e7ucd+GmYO09x/R0DLjj10yFuJ+lYDGelp
 m+XA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU+5ooOGR7P9+++89SZbjcXlwCyps67Nyxn2ncOxOYOpIUUPgwsQARsSJ+azqahMkjeE8/jubtylDgYPJQ6og==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyYu6tSJUIwnMuv3NNzn+jzynipU3hctCJEdRRqrIc3dyr1h55w
 YVSKmhh2SPTLEZ6VXKFagOSlIGrLv8BSt3l5T1ii2dfoPt04/i7ZM46s3+jgEXwQHdFpE2mU77b
 LVIYxyB+KAnPP5Tke3c2IWfO5wi7B9BDSQKtE2mSXGWu5FyhffDtEwykgzmZmdz0rmmyRt1/mkG
 duoHBIR5ECBSjnQ9QOztlMAERodb3My3MRUuglLxg1LjMW9Ro=
X-Gm-Gg: ATEYQzxZJedOQXchjO512zi1bZaxfjJs/vHeAJPqctWNw03sQlWSshpCDTsrLwFy5WS
 egS3gIhE0cDRAiYEYBUvDwzJUHXd9XsyQFGzRFEOTdredPf/8T9NozpaE9eHkeFrtTaEuTTW/jS
 Db06BT/ZxFDnlMl0RC5prSVKZUx8jI+9JsUhVAKDj2n8f/ku1GD39v1p7DxHiCPtxFEoh2HZMn2
 BrG9g==
X-Received: by 2002:a05:690c:f16:b0:798:6401:fd1f with SMTP id
 00721157ae682-798854a7e4emr11636077b3.14.1772153089296; 
 Thu, 26 Feb 2026 16:44:49 -0800 (PST)
X-Received: by 2002:a05:690c:f16:b0:798:6401:fd1f with SMTP id
 00721157ae682-798854a7e4emr11635807b3.14.1772153088806; Thu, 26 Feb 2026
 16:44:48 -0800 (PST)
MIME-Version: 1.0
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
 <20260225-blk-dontcache-v2-2-70e7ac4f7108@columbia.edu>
 <aaDEEjVKBKrLxsht@infradead.org>
In-Reply-To: <aaDEEjVKBKrLxsht@infradead.org>
Date: Thu, 26 Feb 2026 19:44:38 -0500
X-Gm-Features: AaiRm52uN73WQ1q0q0Bsy0nLJ7MoTUQc88yWQcbleL3GQlPfTUc323g8dJKyM6s
Message-ID: <CAKha_sonOvAGriyromHtyRc-VY6Zyg3J3zd9UJPfBOAt1a522A@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
X-Proofpoint-ORIG-GUID: HAanj6ZFhVdt5bqh-DC2KRpkEvWW9x4r
X-Proofpoint-GUID: HAanj6ZFhVdt5bqh-DC2KRpkEvWW9x4r
X-Authority-Analysis: v=2.4 cv=KeffcAYD c=1 sm=1 tr=0 ts=69a0e901 cx=c_pps
 a=0mLRTIufkjop4KoA/9S1MA==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=x7bEGLp0ZPQA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Da8U98TiO7q1upZEImrf:22
 a=BpGzv1V74M3SfeTrGa8v:22 a=JfrnYn6hAAAA:8 a=lVyRQGvDAGr_LZokY8wA:9
 a=QEXdDO2ut3YA:10 a=WgItmB6HBUc_1uVUp3mg:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDAwNCBTYWx0ZWRfXxQzhY0rvYJCd
 6oZOPMJKVr04Z/7lNSvb8tbfLiMpIppf6p58D0LlODDp5OE7+i+Xw/ndaJcbNn70VwViVJGm3uu
 nEj8n3jMyT1nB3MqepkOm5rwbjfB28PpXeN9wwTcn+PKsCM1HQQ5nSPlLXm4TAZ54+lGOop8eVk
 4eqENo0yhcA1iA4rUxTjS9DxlWS9AMrLpxbN6GeIZoTg3S05cA1+QM+htI5sD4arXOH2JYT8YNi
 QYQE6EIrfCSfzdIGYfNeMSQvQymxl/9WT3/JElY5kLIxODie9tnrtMWkE/421a8ey/gp8JD1f6P
 r/ZJhZOSiWJkj7++B85HcjYN1/tSt+FSzpm9kgc97hRFmowicO3il0/Sl3NgDm6kvSSOQH69DpX
 EYROa/ONPG+SwD73/GK2xYr4CQsPu9RtQtYIkEjqIR6LcYt2+ZqBq7xWIVVHtMux9XlcpR/wK81
 w8Lu1r/VaU/HBTZtAtA==
X-Proofpoint-Virus-Version: vendor=nai engine=6800 definitions=11713
 signatures=596818
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=10 priorityscore=1501 malwarescore=0
 suspectscore=0 adultscore=0 phishscore=0 impostorscore=10 bulkscore=10
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270004
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Feb 26,
 2026 at 5:07 PM Christoph Hellwig <hch@infradead.org>
 wrote: > > --- a/fs/bfs/file.c > > +++ b/fs/bfs/file.c > > @@ -177,7 +177,7
 @@ static int bfs_write_begin(const struct kiocb *iocb [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [148.163.139.74 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
X-Headers-End: 1vvlyR-00053k-JP
Subject: Re: [Jfs-discussion] [PATCH RFC v2 2/2] block: enable RWF_DONTCACHE
 for block devices
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Bob Copeland <me@bobcopeland.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-mm@kvack.org, linux-nilfs@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Namjae Jeon <linkinjeon@kernel.org>, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>, Jens Axboe <axboe@kernel.dk>,
 Christian Brauner <brauner@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev,
 linux-karma-devel@lists.sourceforge.net
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
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:hch@infradead.org,m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:jack@suse.cz,m:yuezhang.mo@sony.com,m:me@bobcopeland.com,m:almaz.alexandrovich@paragon-software.com,m:linux-mm@kvack.org,m:linux-nilfs@vger.kernel.org,m:willy@infradead.org,m:linux-ext4@vger.kernel.org,m:linkinjeon@kernel.org,m:linux-block@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:aivazian.tigran@gmail.com,m:konishi.ryusuke@gmail.com,m:axboe@kernel.dk,m:brauner@kernel.org,m:sj1557.seo@samsung.com,m:linux-kernel@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:akpm@linux-foundation.org,m:ntfs3@lists.linux.dev,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,columbia.edu:s=pps01];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.962];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,suse.cz,sony.com,bobcopeland.com,paragon-software.com,kvack.org,vger.kernel.org,infradead.org,zeniv.linux.org.uk,gmail.com,kernel.dk,samsung.com,linux-foundation.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[tz2294@columbia.edu];
	TAGGED_RCPT(0.00)[jfs-discussion];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,columbia.edu:-];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,mail.gmail.com:mid,columbia.edu:replyto]
X-Rspamd-Queue-Id: 07CED1B14AA
X-Rspamd-Action: no action

T24gVGh1LCBGZWIgMjYsIDIwMjYgYXQgNTowN+KAr1BNIENocmlzdG9waCBIZWxsd2lnIDxoY2hA
aW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4gPiAtLS0gYS9mcy9iZnMvZmlsZS5jCj4gPiArKysgYi9m
cy9iZnMvZmlsZS5jCj4gPiBAQCAtMTc3LDcgKzE3Nyw3IEBAIHN0YXRpYyBpbnQgYmZzX3dyaXRl
X2JlZ2luKGNvbnN0IHN0cnVjdCBraW9jYiAqaW9jYiwKPiA+ICB7Cj4gPiAgIGludCByZXQ7Cj4g
Pgo+ID4gLSByZXQgPSBibG9ja193cml0ZV9iZWdpbihtYXBwaW5nLCBwb3MsIGxlbiwgZm9saW9w
LCBiZnNfZ2V0X2Jsb2NrKTsKPiA+ICsgcmV0ID0gYmxvY2tfd3JpdGVfYmVnaW4oaW9jYiwgbWFw
cGluZywgcG9zLCBsZW4sIGZvbGlvcCwgYmZzX2dldF9ibG9jayk7Cj4KPiBQbGVhc2UgZG9uJ3Qg
Y2hhbmdlIHRoZSBwcm90b3RveXBlIGZvciBibG9ja193cml0ZV9iZWdpbiBhbmQgdGh1cwo+IGNh
dXNlIGNodXJuIGZvciBhbGwgdGhlc2UgbGVnYWN5IGZpbGUgc3lzdGVtcy4gIEFkZCBhIG5ldwo+
IGJsb2NrX3dyaXRlX2JlZ2luX2lvY2IsIGFuZCB1c2UgdGhhdCBpbiB0aGUgYmxvY2sgY29kZSBh
bmQgdG8gaW1wbGVtZW50Cj4gYmxvY2tfd3JpdGVfYmVnaW4uCj4KPiBBbmQgYXZvaWQgdGhlIG92
ZXJseSBsb25nIGxpbmUgdGhlcmUgdG8ga2VlcCB0aGUgY29kZSByZWFkYWJsZS4KCldpbGwgZG8u
Cgo+Cj4gTm90ZSB0aGF0IHlvdSBhbHNvIG5lZWQgdG8gY292ZXIgdGhlICFDT05GSUdfQlVGRkVS
X0hFQUQgY2FzZS4KPgoKSSBkb24ndCB0aGluayB0aGVyZSBpcyBhICFDT05GSUdfQlVGRkVSX0hF
QUQgY2FzZS4gVGhlIG9ubHkgdXNlciBvZgpibG9ja193cml0ZV9iZWdpbl9pb2NiKCkgd291bGQg
YmUgYmxrZGV2X3dyaXRlX2JlZ2luKCksIHdoaWNoIGlzIG9ubHkKZGVmaW5lZCB1bmRlciBDT05G
SUdfQlVGRkVSX0hFQUQuICFDT05GSUdfQlVGRkVSX0hFQUQgcGF0aHMgdXNlIGlvbWFwIHdoaWNo
CmRvZXNuJ3QgdXNlIGl0LiBBbmQgYnVmZmVyLmMgaXMgb25seSBjb21waWxlZCBmb3IgQ09ORklH
X0JVRkZFUl9IRUFELiBVbmxlc3MKSSdtIG1pc3Npbmcgc29tZXRoaW5nPwoKVGhhbmtzLApUYWwK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlz
Y3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNz
aW9uCg==
