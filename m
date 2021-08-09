Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CED33E4E4B
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 23:14:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mDCba-0008UX-PZ; Mon, 09 Aug 2021 21:14:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mDCG1-0003tP-N5; Mon, 09 Aug 2021 20:52:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dK575eflD+STye7Op1lRK6nqKdgr0fcfkvv4bBDnEnQ=; b=YpVuWw1NhWBxX+a1M1fV/8cjdV
 NxlF8IhHGagoAEiw8sV0ihIFIUedAzBCnH5qfCpWo+Aw64w4rO0a4WheOD7jr7wLTstyl48+XZ6UF
 jnTnFQH4bhUDfGDnYb95x4OCB6ZpwNQiXas0GYqtZlSjlEInDlsng9tpnP33XwDkoV9k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dK575eflD+STye7Op1lRK6nqKdgr0fcfkvv4bBDnEnQ=; b=YHJbnjq4C4A710clA+o06QdyLm
 1XR0taQd4J28TMBM02L9Nx54uKj/BEkkGDDBIpVBgzSXqXDf0FVwnkzsBW9eDkxLwPIOAJ3fLQUlK
 2zrrwQIUJ8ExnxELv0kEKhf8K4EMbXNCGbrtDnWbeJUDS5Rme8mMhTq4NoczPnifGYFc=;
Received: from mail-lj1-f175.google.com ([209.85.208.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDCFz-00149z-Np; Mon, 09 Aug 2021 20:52:25 +0000
Received: by mail-lj1-f175.google.com with SMTP id h9so25579149ljq.8;
 Mon, 09 Aug 2021 13:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=dK575eflD+STye7Op1lRK6nqKdgr0fcfkvv4bBDnEnQ=;
 b=dsxdF+eBSn/90W8Q0YlAKuarE7/CMiCbElHS7lqpn+7mXr0Ks4IlkvFFDJFfxjfclT
 kpMIfbETD6N8E0/Hy4PzQg5a3aGaIe0PGSTAYxw/h8Fpda2vFvYVvcQrWPjHwDYlQg9A
 LGye2a/52ekUVE/1AXRIxt4B3x3eBNi0TtSuxYDCMCG6xrL814dXEiOpCMIjTzUuqZD2
 WO0IhfUmRVEMtu+MGmgAuBs7yKRqE5UHM+CJP6Qa4AU+oxFuhDNaoAmZcksFPqppnR9o
 sJ4VIwl4T1B3NbjC/XNMFh2pei+Y9IlgowjD9s3krz7uaxNf8uObKMM0jrjNpwrpDEaS
 zrTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dK575eflD+STye7Op1lRK6nqKdgr0fcfkvv4bBDnEnQ=;
 b=QdCYxr8T6bdmaxtMptfHXJ1XJtcgTipqQMSnxqZzZnBS4h0Rs3BxJSXFdQqrSOUDtu
 Su/PSfCq53+YnsnOcyyHLJEdcX3pk33ijHo6atiBvLWNNM3EQ/PHBqe+fGfcl1WYtdeT
 i4W0V+ebTLaa0aiWs6d07CMBCA+DfaN3gHf1GYyMgtDvJcaZoIOiWkrq0C0QtzBpkpr2
 htxBPsfYbIZJwQ4Hbh4VP3rNtf6EmU6z4WyxnTH1qhQTo3BjCLVqnZRcD8uHrH9fbQxU
 r26FhB9FWd0jvGTR8rbwjH7s3fS/RXHJ4toD5DMIiOiLWbPz1+Os1+Sh2TaDBWbyKq06
 l72w==
X-Gm-Message-State: AOAM531G4uzWyqpJgTDtXZddSCV8qu9HZDkXp+PSYvGpWTUiT+X+9VP5
 qd/MT2b3kQB7FsnIXDVGimQ=
X-Google-Smtp-Source: ABdhPJxdAmIIMREvt7Qdl08XDDa3yv5ckIQSESbS+K1Ck04daVHWiCCfZLO5pN71JjJxDXTF3KG+2g==
X-Received: by 2002:a2e:3206:: with SMTP id y6mr1985938ljy.187.1628542336977; 
 Mon, 09 Aug 2021 13:52:16 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id c10sm1283899ljr.134.2021.08.09.13.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 13:52:16 -0700 (PDT)
Date: Mon, 9 Aug 2021 23:52:14 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210809205214.mual4t7ipppc7h3v@kari-VirtualBox>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-6-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210808162453.1653-6-pali@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.175 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDCFz-00149z-Np
X-Mailman-Approved-At: Mon, 09 Aug 2021 21:14:41 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 05/20] ntfs: Undeprecate iocharset=
 mount option
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Aug 08, 2021 at 06:24:38PM +0200, Pali Roh=E1r wrote:
> Other fs drivers are using iocharset=3D mount option for specifying chars=
et.
> So mark iocharset=3D mount option as preferred and deprecate nls=3D mount
> option.

Documentation needs to also be updated here.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
