Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FF8598605
	for <lists+jfs-discussion@lfdr.de>; Thu, 18 Aug 2022 16:36:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oOgct-00037b-KV;
	Thu, 18 Aug 2022 14:36:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1oOgco-00037I-4t
 for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Aug 2022 14:35:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2AZvmHGmUWYRtU8m5E0Y2FaQ3RYx/t9Os+yxzS89zbE=; b=bf8Hbnt7IEa1bolEyddpo4hWWT
 J65Offx6X9PFZnUVLHwRPz1Wz89V1JyvnBoN7N8vexJ0E4hqYFmkM68umO1XRqvzvvUnX9TnGJrAM
 tz5skRE2IFT/o9GKdf6VC8Kln5lImYyd491VBtnmQ5FiSSZo0BzHtjXG75I93p1wub6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2AZvmHGmUWYRtU8m5E0Y2FaQ3RYx/t9Os+yxzS89zbE=; b=jv2SX1tXnu3x83QgGtbx+r250j
 npeW3hFeC0WuJPY6hH5ap5xS5sdtqPtyeg1msh8PHyiRPd1uy2yHl2hMfJiT55ZMA7BFlhn5C3brC
 aG27XA7ISKZkSQS08f8N/cUfQ7aC4DU39jBgod+EPUZfH/ciIuTW2ERm25RGcYFrrBPE=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oOgck-007wVc-Hk for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Aug 2022 14:35:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2AZvmHGmUWYRtU8m5E0Y2FaQ3RYx/t9Os+yxzS89zbE=; b=YYpNzkhXYjdFiNTAIrlJmpzhKN
 JcxrksfNkLVtWmxo0N7RP87fpxhFhmBWzqCGl5mTAE0vsM52rWb9WSKoULQ85A4os9R+TiOCNV87X
 dx+pCYenv4Vr2ecM2PrItSsmKhzZTCBx1ei8ZLfQ4lQjMQzlSexiV5osR/7dx/CRM3a66aB7tL2Q2
 7PUISYNqrkUoiTEC43ypjVhhkrOd6soKsf9VM44E7CEUS91i+m84oBOtJ8+BwbjidVFChlJy5Q/PE
 F1eID9xWyilIo7RkkhOXGwkHG+VLYTjd7hFqTaWn4B5/yzC/IvCatAl1QJ6r9Z0Xt5mstMYq4oypG
 B0GPw+xA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1oOgcA-009t9W-K8; Thu, 18 Aug 2022 14:35:18 +0000
Date: Thu, 18 Aug 2022 15:35:18 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Yv5OJuwJq17bQDXo@casper.infradead.org>
References: <YvvBs+7YUcrzwV1a@ZenIV>
 <CAHk-=wgkNwDikLfEkqLxCWR=pLi1rbPZ5eyE8FbfmXP2=r3qcw@mail.gmail.com>
 <Yvvr447B+mqbZAoe@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yvvr447B+mqbZAoe@casper.infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 16, 2022 at 08:11:31PM +0100,
 Matthew Wilcox wrote:
 > fs/adfs/dir_f.c: .iterate = adfs_f_iterate, > fs/adfs/dir_fplus.c: .iterate
 = adfs_fplus_iterate, > > ADFS is read-only, so must be sa [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oOgck-007wVc-Hk
Subject: Re: [Jfs-discussion] Switching to iterate_shared
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
Cc: jfs-discussion@lists.sourceforge.net, Hans de Goede <hdegoede@redhat.com>,
 devel@lists.orangefs.org, apparmor@lists.ubuntu.com,
 linux-unionfs@vger.kernel.org, codalist@coda.cs.cmu.edu, coda@cs.cmu.edu,
 linux-security-module@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, Namjae Jeon <linkinjeon@kernel.org>,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Aug 16, 2022 at 08:11:31PM +0100, Matthew Wilcox wrote:
> fs/adfs/dir_f.c:        .iterate        = adfs_f_iterate,
> fs/adfs/dir_fplus.c:    .iterate        = adfs_fplus_iterate,
> 
> ADFS is read-only, so must be safe?

I just checked ADFS.  This isn't a f_ops ->iterate, this is a special
adfs_dir_ops.  ADFS already uses f_ops->iterate_shared.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
