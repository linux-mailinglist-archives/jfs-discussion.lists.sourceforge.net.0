Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8C8B02F3A
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Jul 2025 09:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bh2ZpsELXrimyUMbhxqoSgahk/G0DGIxjI0C+Q/fr0o=; b=Kxp94XTbtZerhwO1GCsn10zaZT
	06l+Vq0caOvw23kivPDZ7fPglG67c5jVcM2ozouaMh6oUyfh7Bcp+L8OrJ5UQbFQtXIAXfqH7tGGF
	XrCdLcfjG8PWqAE2PTKNCkF4a0msIKQAXpe4W7VWo99Xefp7ZT6SeKv3spoURvpBI9GA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uar57-0002Tw-SL;
	Sun, 13 Jul 2025 07:25:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <suchitkarunakaran@gmail.com>) id 1uar4Z-0002Q1-5c
 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Jul 2025 07:24:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NF4T7x0KqxjN1Zk8N6FsAYLGGhLudo88bi0zLj313w8=; b=UBsEVhD2sYpMOfg0ZFrm/dZ9EP
 67BDdW2he0FSdsGIUkfJH0cvP7nDCafhwXNFWaVRh5N1zMZKmCYbqYFOihPd8AuO0EWfB1HbYF1Cq
 2RK6LJMJD19pBLnjyPVKY6cxBWJ9b4sKzBd7xqGIqL553cJ5YwO7OTpeJas+1QDpH+K4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NF4T7x0KqxjN1Zk8N6FsAYLGGhLudo88bi0zLj313w8=; b=g8tbrHNjJaiWBekf+p7YpTjFyk
 g31h2o5WYW3j46bNebQJuTGOQBfQ8IrMvq3dblSirFQbmOpBw/HC8W7X8VDZhJOsNKavk0/wKdrFp
 7ztvqWD3dk0vZs/avsaz4DC7OlNTQ9qNMk/9Pqq4lcNPx6PKUuNv09CO+CSwrvs4OGA0=;
Received: from mail-oa1-f54.google.com ([209.85.160.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uar4Y-0002fd-S7 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Jul 2025 07:24:31 +0000
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-2da3c572a0bso3187923fac.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 13 Jul 2025 00:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752391465; x=1752996265; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=NF4T7x0KqxjN1Zk8N6FsAYLGGhLudo88bi0zLj313w8=;
 b=BWohP7nJNa2tFWtmLNypJma26NNZ1YIOPP0kj2szTfhE5A/ns4t+Vi5yz+r816XwRm
 iphKI2c5UjANFRpnfW+cOzv4NCevsfhAfS20Xq5RxSUayetU4jePmjxO7IWu1PCNFFy1
 TdJAbEc/F8jBKF6WKQj4YwfDJijpdlRNACkoeLY7Zd3kpPKH+smPEWfNVG6/P5LrsQJX
 1NGj2SexK0Lw58bYXgk5CbrWoYmgqN0JHVP/kelfD9oWDiSMJaLGnqKKf9OXwJz/2OSl
 55ZLLkkCiqDAO6zSDS8n8Jm9I9dwiyCE3x/OT3KvAJYpbUnRaKYTl1D+cWGGsPm3w3jT
 pxLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752391465; x=1752996265;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NF4T7x0KqxjN1Zk8N6FsAYLGGhLudo88bi0zLj313w8=;
 b=lx39JqigoYaF69KKfwIIzZZ9/2FapMAOvIbOx+vjL/7g1HvC8a0kyjSV5hLQeV4WZs
 dM0tGEuAqNty8S+RTwSEG2Jvne4xhboK2PG7fjk032N6JmbfTgeZ1+2bGkL+qh66Mc8r
 YLvZ3AwUy/1VmgvPq5LZGlt/p+Xi89rBK9q13BS5UxI8Qa/t2cYDWjDyjK0wI8TiRBqu
 bzdYDa2eai1vPN/RR0EhQslCpI3My6D22wRzcwHoZcwn/TAs6x3tgNEOOJ8CyABEFK39
 QybmpPotilOf/qYdu/XIBc9uaN+4CmA9Emct4rKrLOjPmGEO9+xD7QALRmLgB8jIUVJ/
 LXuA==
X-Gm-Message-State: AOJu0Ywovnc8cMZT1In5O4GT++67zYj1uFoBplwbcvie9ucL3F/EEi8e
 WLRkeggPkUDSzZJ8byXDF06wCbLb6iDEA08UBenfLJaXQknkYeGI061rXpWZ1etLKOtj0AMCMGu
 le0xyEIj4FqS5hKenWDo+4voOUmFfW7lB/gtptpg=
X-Gm-Gg: ASbGncsqrPYggH4JI1kq3K7BOlBjgOI5Mu3b+MwMsDbISh3PSXR04bv2vQRJOM8rYqG
 al7EOIt0Y1ijqSTu/SIy0ItAn3GKkUmE39jcr+BXPHVd/LFNCgZzZP0ADmaa/gau4Hj2lJM7Cii
 s4ybRhetkizaY9YrooJwbi2HesaXSYGeKoyGgwQdp35t1F/bN3I3KTwhSK3pG8fuGN5DBqdW3fs
 3MGCbmI
X-Google-Smtp-Source: AGHT+IF4MVlkH5px2xPEDZFHk6dNlX+XsNGMYba1X0b8T0K3Xbl3WyMNlX6CvaCyE1A4AgmNNGss1OBgEQJEirl7H3w=
X-Received: by 2002:a05:6870:348:b0:2e4:68ee:4f21 with SMTP id
 586e51a60fabf-2ff2691ae25mr6065869fac.20.1752391464913; Sun, 13 Jul 2025
 00:24:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250605175634.16362-1-suchitkarunakaran@gmail.com>
 <4448980c-d385-45ea-b8c2-b4a0bdde39c9@oracle.com>
In-Reply-To: <4448980c-d385-45ea-b8c2-b4a0bdde39c9@oracle.com>
Date: Sun, 13 Jul 2025 12:54:13 +0530
X-Gm-Features: Ac12FXztDpOAEQp2PK_JpoFMZDvk2yr5zsd19V5JVpNovPmjyPli4RSP681BYt8
Message-ID: <CAO9wTFimpNU+h4XvpRSS5ocKWzVF4G3W8G2NyOMt09VtVdgKSg@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 12 Jul 2025 at 01:40, Dave Kleikamp wrote: > > On
 6/5/25 12:56PM, Suchit Karunakaran wrote: > > Replace legacy XT_GETPAGE macro
 with an inline function that returns a > > xtpage_t pointer an [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [suchitkarunakaran(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uar4Y-0002fd-S7
Subject: Re: [Jfs-discussion] [PATCH RESEND] jfs: jfs_xtree: replace
 XT_GETPAGE macro with xt_getpage()
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
From: Suchit K via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Suchit K <suchitkarunakaran@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, 12 Jul 2025 at 01:40, Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>
> On 6/5/25 12:56PM, Suchit Karunakaran wrote:
> > Replace legacy XT_GETPAGE macro with an inline function that returns a
> > xtpage_t pointer and update all instances of XT_GETPAGE in jfs_xtree.c
>
> I'm picking this up, but I simplified it a bit. I dropped the size and
> rc arguments. size is always passed in as PSIZE and I have the function
> return ERR_PTR(-EIO) on error.
>

Hi Dave. Thanks for picking this up. Is there anything that I need to
do from my end?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
