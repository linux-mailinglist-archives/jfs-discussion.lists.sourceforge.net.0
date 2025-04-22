Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE924A96D50
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Apr 2025 15:46:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7Dwz-0006gX-G8;
	Tue, 22 Apr 2025 13:46:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1u7Dwy-0006gL-5F
 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 13:46:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lC3NDgaRhdgfiwFHg8Ytv8QWISx1gBn21bHPi1PjIAw=; b=Ag4rKaxQLJSoO3xzWTaBc+7aX0
 SPsBMEIpQn6a8+XyIK0hLx7iyqrfkf9DmRi14IKHtJBc8N6B0z9bw1K57XM/Z29mYtQpWo8ZJoDWU
 95bCwIWZsuPlTBfrx0ZkQHs2kSpvwXjRVDxBYVN+GkVH8pXIvx8PUlp1jG4k0W7TD0zQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lC3NDgaRhdgfiwFHg8Ytv8QWISx1gBn21bHPi1PjIAw=; b=e0vulWuuftuiJP77FNEov8tvKN
 mXho9xxm67o6Afm9kdewBqLnR+YDS3P5vZ2faVifb/MkkNJc3ENqWWTu4WtJyZLulOpro4D5EsxyG
 itoWFEM/CPXubk79v4RJS3ERoDf6WsMxWLmslvT7TSTuQkJ8/baP0DdxPDjWap8kHRB0=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u7Dwe-0002Dp-F0 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Apr 2025 13:46:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4E8E6A4BAF1;
 Tue, 22 Apr 2025 13:23:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B816CC4CEE9;
 Tue, 22 Apr 2025 13:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1745328532;
 bh=2me7VBvAa2GZQE5A/roufyixEHNbO9DV7E/3wBj0/4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iWbMdgHpfz08LG91tG3OtdAk9ffFq/qpS4FiRI4TKgteuhS5LbZPRyecxt0gzSbWK
 3zsSqEL9E2I1vrTXs//+hRrBRzL+kpfG7VKBQD9bZKFwL9pe9Yc2VELwVK58eiGrmb
 4rmrE8MiCfUoYI0R/HuZEOHy2whieSwknQzhioiw=
Date: Tue, 22 Apr 2025 15:28:49 +0200
To: Aditya Dutt <duttaditya18@gmail.com>
Message-ID: <2025042210-stylized-nearest-ea59@gregkh>
References: <20250415180939.397586-1-duttaditya18@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250415180939.397586-1-duttaditya18@gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 15, 2025 at 11:39:39PM +0530, Aditya Dutt wrote:
 > From: Dave Kleikamp <dave.kleikamp@oracle.com> > > [ Upstream commit
 a779ed754e52d582b8c0e17959df063108bd0656
 ] > > In order to make arra [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1u7Dwe-0002Dp-F0
Subject: Re: [Jfs-discussion] [PATCH 5.15.y] jfs: define xtree root and page
 independently
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
From: Greg KH via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Greg KH <gregkh@linuxfoundation.org>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Manas Ghandat <ghandatmanas@gmail.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Apr 15, 2025 at 11:39:39PM +0530, Aditya Dutt wrote:
> From: Dave Kleikamp <dave.kleikamp@oracle.com>
> 
> [ Upstream commit a779ed754e52d582b8c0e17959df063108bd0656 ]
> 
> In order to make array bounds checking sane, provide a separate
> definition of the in-inode xtree root and the external xtree page.
> 
> Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
> Tested-by: Manas Ghandat <ghandatmanas@gmail.com>
> (cherry picked from commit a779ed754e52d582b8c0e17959df063108bd0656)
> Closes: https://syzkaller.appspot.com/bug?extid=ccb458b6679845ee0bae
> Signed-off-by: Aditya Dutt <duttaditya18@gmail.com>
> ---
> Tested using C reproducer here: https://syzkaller.appspot.com/x/repro.c?x=113bb250e80000
> (given in the dashboard link above
> UBSAN is not triggered when this commit is there.
> It is triggered when it is not.

Please always submit backports for all relevant stable trees.  We can't
take this one until the newer trees are fixed.

Please resubmit all ones needed.

thanks,

greg k-h


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
