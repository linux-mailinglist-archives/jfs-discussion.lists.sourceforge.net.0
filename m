Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AD5741739
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 19:32:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEZ1S-0003Ue-SY;
	Wed, 28 Jun 2023 17:32:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qEZ1S-0003UY-2V
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 17:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4mtcRlXWQpbbslXjCfhS0B8/3iHNiw5vVznGMLX6XwQ=; b=Il371nvL0arIZbheYvJlLLj39F
 Jkwxxuq2S1p+dX4qHQP+SEnQT5WjxE0DDKDSSGkR51GpJxFHvEDN/jibb0k37upiKkuB2R+R1lo7H
 TyPFMTEPAJm/ZW2+0d3nfwd6WnO8mK0c29Ez4t36yQA2A6YEHwoyJfOrTYwsHaJJJVmo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4mtcRlXWQpbbslXjCfhS0B8/3iHNiw5vVznGMLX6XwQ=; b=BDR/mk+a9xqfmQSQrDr90F91pN
 nRtWDaFRQa3d9T52DVgwOi7cNwBhSZx+YN05xaQ5jvBNBIKw2gyYDxlzAPmtN0Ov3NtLLab5yGfdt
 Hz1KW2OfQVt3oOOakY/XbyA8n9uDLA2J2if29BwRX4R5qXt0WxIesVeKUfsWfn8wxrzY=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEZ1N-000NFY-Jf for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 17:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=4mtcRlXWQpbbslXjCfhS0B8/3iHNiw5vVznGMLX6XwQ=; b=hN89nE4eelVc4iK+8FPnE7PZBr
 RF4dDkftNlYx1W/yDLUC661l1MUszbN91MrC25V6MePXXjZxbb1zMAZbg7yYAP07MnLn3/Iwrelua
 tcX5YGVUWJ9eBW86grHHxwSkKh8suyGLVEFLgbFLcfb623nskQm0U8l8lNuLLkG4YPRfSyFEqArt5
 c7knLC1K310NXbKBDnNRDN4wryygsQ7ARZhqlFbl5yOkG/6q3DtC411EzOni4EW5QTIRZnsUgSzx6
 i1oZWGj7d/+ZfNdtIanqrfvNFvP8bbePZrKiFc3ZKpDKjUT2QQMbK7pdVliG1orAwZS6lcBvh2Ujt
 SalUM0ng==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qEZ1C-00GV9p-AS; Wed, 28 Jun 2023 17:31:50 +0000
Date: Wed, 28 Jun 2023 17:31:50 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Namjae Jeon <linkinjeon@kernel.org>
Message-ID: <ZJxuhjWdZlaV8iQw@gallifrey>
References: <20230628011439.159678-1-linux@treblig.org>
 <20230628011439.159678-3-linux@treblig.org>
 <CAKYAXd-KeNM56ecmnaDR2wA4meTqPRa=e+KT3JJkpvC9=PCeiw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKYAXd-KeNM56ecmnaDR2wA4meTqPRa=e+KT3JJkpvC9=PCeiw@mail.gmail.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-21-amd64 (x86_64)
X-Uptime: 17:31:26 up 101 days,  4:05,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  * Namjae Jeon (linkinjeon@kernel.org) wrote: > 2023-06-28
 10:14 GMT+09:00, linux@treblig.org <linux@treblig.org>: > > From: "Dr. David
 Alan Gilbert" <linux@treblig.org> > > > > Swing most of the inlin [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qEZ1N-000NFY-Jf
Subject: Re: [Jfs-discussion] [PATCH 2/3] fs/smb: Swing unicode common code
 from server->common
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
Cc: sfrench@samba.org, linux-cifs@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

* Namjae Jeon (linkinjeon@kernel.org) wrote:
> 2023-06-28 10:14 GMT+09:00, linux@treblig.org <linux@treblig.org>:
> > From: "Dr. David Alan Gilbert" <linux@treblig.org>
> >
> > Swing most of the inline functions and unicode tables into smb/common
> > from the copy in smb/server.
> >
> > UniStrcat has different types between the client and server
> > versions so I've not moved it (although I suspect it's OK).
> ksmbd doesn't use this function. You can move it to smb_unicode_common.h.

Ah OK, thanks.

Dave

> Thanks.
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
