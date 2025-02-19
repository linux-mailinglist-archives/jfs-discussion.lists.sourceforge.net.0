Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 167CCA3C238
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 15:34:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkl8s-0003cY-O8;
	Wed, 19 Feb 2025 14:33:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pchelkin@ispras.ru>) id 1tkiOK-0008OS-51
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 11:37:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9+lYEc473PoSc/uXpeIr2BqdS0f3h4HSEoj/PNaHWuU=; b=ex4pk9Qae2aWrqvzeOOQYZAAzm
 TkC3KMOFyNfjUg36kfCFKBzPdSrtb56kJINn8+GgrA39ODe40bDkrL3aEzbvbCV5yMJ8Ct+i2Neu2
 9fRONY+AwkA7z8iAN+PL2nPbs8PvB9xkZ0xoZHy21tUnPltI7Y5ZdlA48CBeOAiZPTLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9+lYEc473PoSc/uXpeIr2BqdS0f3h4HSEoj/PNaHWuU=; b=H6AQ3ZMEIy856e3Fq1d/oWEkab
 Epyv5f0ab5FEddrwDhO7s91SLGOpYCaxw2drH03NYnZIxrA7AB6RkEF4NIJEX8/+3KJcT5RmvpMft
 E/2+Mf/+97Tm4k38qWzvC9qhyqI6VpQ82Pyh+BzBRlJOOYhuitAJesh0q6Ln+1ycEktU=;
Received: from mail.ispras.ru ([83.149.199.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkiOJ-0001bU-DI for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 11:37:24 +0000
Received: from localhost (unknown [5.228.116.177])
 by mail.ispras.ru (Postfix) with ESMTPSA id B051040B279C;
 Wed, 19 Feb 2025 11:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru B051040B279C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
 s=default; t=1739965031;
 bh=9+lYEc473PoSc/uXpeIr2BqdS0f3h4HSEoj/PNaHWuU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YPRvAYqRri3Lbb3Xf0kt0aF9kEC4Iq3qoZNzmIN/dXuL7AJ3lEbyJVzy3I5rU3RCl
 GllF3fVzT7hWvL/n1UW0nu0+jgaqqSBDUS2MJPq/XahQL7LkgFQAR24VL656Oo1wyq
 44WBXYC7Adf5HLjolI/qffwMw7aRxv52dGZTAGys=
Date: Wed, 19 Feb 2025 14:37:11 +0300
To: Rand Deeb <rand.sec96@gmail.com>
Message-ID: <tx4mjsvkleki6butsmbh533y6w55rt44zaorh6auhjyfgzunj3@oaiwslri6x5h>
References: <20250219072504.1655151-1-rand.sec96@gmail.com>
 <v3rsldvzq4ujgcxamjwcmmfm62wgdgjscg25c6t6xph3itjedp@sbuayguprw2i>
 <CAN8dotnkd-fSQurTFAf_8z3K1yRNj5SVJ4qYc3Tq7cVZLq02qA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN8dotnkd-fSQurTFAf_8z3K1yRNj5SVJ4qYc3Tq7cVZLq02qA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 19. Feb 14:10, Rand Deeb wrote: > I focused on 5.10
 and added it to the subject to avoid confusion, > since files differ across
 versions. But yes, all versions have the issue. > In one of my p [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [83.149.199.84 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [83.149.199.84 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tkiOJ-0001bU-DI
X-Mailman-Approved-At: Wed, 19 Feb 2025 14:33:34 +0000
Subject: Re: [Jfs-discussion] [PATCH 5.10.y] fs/jfs: cast inactags to s64 to
 prevent potential overflow
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
From: Fedor Pchelkin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Fedor Pchelkin <pchelkin@ispras.ru>
Cc: voskresenski.stanislav@confident.ru, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, lvc-project@linuxtesting.org,
 linux-kernel@vger.kernel.org, Rand Deeb <deeb.rand@confident.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, 19. Feb 14:10, Rand Deeb wrote:
> I focused on 5.10 and added it to the subject to avoid confusion,
> since files differ across versions. But yes, all versions have the issue.
> In one of my past patches, maintainers couldn't apply it due to kernel
> version differences, which led to confusion. So I thought specifying
> the version upfront would help. My bad, I should have noted it after
> the commit message instead.

The officially supported stable kernel branches can take the patch if it
or its equivalent is already present in the mainline.
https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html

> 
> I'll take this into account in future patches. Should I send another
> patch specifically for the mainline version now?

Yes. And not specifically, but deliberately (it's a requirement). The
existing problems should be fixed there at first.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
