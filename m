Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3298985B1D5
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Feb 2024 05:07:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rcHPo-0004GP-LX;
	Tue, 20 Feb 2024 04:07:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rcHPi-0004GH-L5
 for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 04:07:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NV09tUAzZc9dnnCtco4N+xbImTBJKqV3EQlqPqU5324=; b=D5SlW77Yyh5ByHSghegXf6lU4d
 /n9CHyZsgkTRQB8G/6wpteMxybCUFPklK4DFeSK32GaJt1YJ/BVwPRFscmITdBaiW8fGeZyv0eGZF
 +wj2mA8hheAAbWTNY0++sDlog7DZvGgtyZ4cEP6NmNtPb1zYOz99gpqjOlY3LVEejOAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NV09tUAzZc9dnnCtco4N+xbImTBJKqV3EQlqPqU5324=; b=QPJwvsoTdAatoqypkIID/oef7l
 H1r2EeNJyuul7cBEMIwaDNHjnr+K+BDPTMP3De9hBWLIcXtpneOK4BCU/LqAc4rwJdCMXTuSTA+3f
 xugBfLih9MdynwkfocBoitcWIBvbj/RD1i5tARZzqOpbTogoNcXTFLYuNZuaK6VCMRho=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rcHPc-0001od-7t for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 04:07:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NV09tUAzZc9dnnCtco4N+xbImTBJKqV3EQlqPqU5324=; b=S//xKMks2ig+UZ7aW6tJN8A8Oa
 7/13hOBwKMRxyhtgHiAYyph09RhQnc/uq1h+5Yrtus0OvkBRbLC18p0MR7C/d9aVFr5t1R/TwAXZN
 x0K4cxR4q3cPRF6+BAFbh8lU0mzRACVntAsnkLZmAStbIncRRoxR5CjJMKsMf9nRLQkgZhUX5v4lP
 PpwDcVBLo9bGGnZz9XG8/fHmX8scVoSRX4Jnzx/cEtgPDrlPs/b5ReLvVutH1kj95Ho0XtFZUDg1v
 ZUuswLW+qV3B7tBZobwekgFvd1LHdhbfDKGS/NVkoIvzVtZOd+538o0ui/Qfr4FMD2sg8YZSfSdbl
 hF8mK5Dw==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rcHPR-0000000Eat0-0mh3;
 Tue, 20 Feb 2024 04:07:09 +0000
Date: Tue, 20 Feb 2024 04:07:09 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Edward Adam Davis <eadavis@qq.com>
Message-ID: <ZdQlbc0Hb0UZy6od@casper.infradead.org>
References: <0000000000003d021006119cbf46@google.com>
 <tencent_E860EA86EF0ECC0079FA6D3C2D496D30940A@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_E860EA86EF0ECC0079FA6D3C2D496D30940A@qq.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Feb 20, 2024 at 11:55:18AM +0800, Edward Adam Davis
 wrote: > During the execution of the jfs lazy commit, the jfs file system
 was unmounted, > causing the sbi and jfs log objects to be release [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcHPc-0001od-7t
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix uaf in jfs_syncpt
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzbot+c244f4a09ca85dd2ebc1@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Feb 20, 2024 at 11:55:18AM +0800, Edward Adam Davis wrote:
> During the execution of the jfs lazy commit, the jfs file system was unmounted,
> causing the sbi and jfs log objects to be released, triggering this issue.
> The solution is to add mutex to synchronize jfs lazy commit and jfs unmount 
> operations.

Why is that the solution?  LAZY_LOCK with IN_LAZYCOMMIT is supposed to
cover this.  Please be more verbose in your commit messages.  Describe
what is going wrong and why; that will allow people to understand why
this is the correct solution to the problem.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
