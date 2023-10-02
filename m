Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B390C7B57CF
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Oct 2023 18:18:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnLcI-0003DH-Nw;
	Mon, 02 Oct 2023 16:17:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ricardo@marliere.net>) id 1qnLWZ-0003AY-AN
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 16:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2GsfzeECTPPTE4gpp5vVnHomCT5yBhjA+mpLuL9YQB0=; b=JG7ZqdFQvH/hDFYSGKEIBm4wJT
 ALiBJPSCipAbAh1jYGHqKjNVaH9SP5EEk8RRlOgTuh7VGaouS2UXxGsokFN1mXidBUsPPFmQTXmw2
 L/ARNxjY0pXFfcxKv/m9fyd/HL8Hr2mkIO9Ky3+bDBn/y3lvgduPUzoiLIqRSSHq4ngk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2GsfzeECTPPTE4gpp5vVnHomCT5yBhjA+mpLuL9YQB0=; b=icsxH3sBRIq9RpgHE8ofz2IIDU
 69XCT4kGcC/tCoVGPzVuIuqjFHNZaNxOuiZeO7ATvyLz/fVmc3LkgHpckAPYaTzscQyyctfX5rlvi
 0SFc0AKREQUv9j3TH4KhgZNTvQ0PBXOUSVYatKBdpZWdOTPm99YIkJBCjfOS0r+882+s=;
Received: from sender4-op-o15.zoho.com ([136.143.188.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnLWU-00G82l-91 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 16:11:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1696262169; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=bllaTzVNbyu3v5rSag5SGswSywadTc7l+pz7OIWiUIgbnoFAC7tmkOhfNavYkkf+hKSy/qOsMSp52sBbdfJq1y81miIdw6LsM1Xr3ADFksFrCsLKjV8uVxZoX9GdJ/tGZcxuFPTpG9hv/IdA1Rw936YiSFCkEVbrxo/EqES/z+E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1696262169;
 h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=2GsfzeECTPPTE4gpp5vVnHomCT5yBhjA+mpLuL9YQB0=; 
 b=XhOUETY6Y0q5vZAL4DymkpE4HJhof9eO/8hcV4F2lxwMye/7yHc1wO0QtwSpN2CGZmsIqiOwa8zlGiLIrb4DQ54ew02ZnFa+4Z6IpTDE0RWe5CT9hJgjSi3SnjKA1Cp/lD6E5YoeBl/lztwFEQOnscXf8S2W+J3DuOZx1krnZ+A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=marliere.net;
 spf=pass  smtp.mailfrom=ricardo@marliere.net;
 dmarc=pass header.from=<ricardo@marliere.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1696262169; 
 s=zmail; d=marliere.net; i=ricardo@marliere.net;
 h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
 bh=2GsfzeECTPPTE4gpp5vVnHomCT5yBhjA+mpLuL9YQB0=;
 b=pAHgML6ntB+okEhJCtDSELRJlzce1azIHNbF/34Qbyt9za/mNB6WNa2wB9c+o0Uh
 ybYhDUHvXiRthBQDB7gV4EnjYD14fZZsxRju5piZoQBxZQziGCpU5FqPMYotkYQj8Bq
 fT1elOkp/S5UdwXjplGMCwwHdF+btsCTl0Ybd+4k=
Received: from localhost (177.104.93.54 [177.104.93.54]) by mx.zohomail.com
 with SMTPS id 1696262167246993.2648287452104;
 Mon, 2 Oct 2023 08:56:07 -0700 (PDT)
Date: Mon, 2 Oct 2023 12:56:03 -0300
From: "Ricardo B. Marliere" <ricardo@marliere.net>
To: Juntong Deng <juntong.deng@outlook.com>
Message-ID: <c52zvpisqgy6nvtw3fku342z5aqmz5gucfagaup2tflw5ia5d7@vbeanlsfhgqp>
References: <VI1P193MB0752E63048A98BC70E4CFA9E99C5A@VI1P193MB0752.EURP193.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1P193MB0752E63048A98BC70E4CFA9E99C5A@VI1P193MB0752.EURP193.PROD.OUTLOOK.COM>
X-ZohoMailClient: External
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 23/10/02 05:56PM, Juntong Deng wrote: > Signed-off-by:
 Juntong Deng <juntong.deng@outlook.com> > --- > fs/jfs/jfs_dmap.c | 3 ++-
 Hey there, looks like you forgot to add a changelog for v1->v2? I see you
 just changed the commit tags ordering but you should have that in mind for
 next time :) 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [136.143.188.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [136.143.188.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1qnLWU-00G82l-91
X-Mailman-Approved-At: Mon, 02 Oct 2023 16:17:53 +0000
Subject: Re: [Jfs-discussion] [PATCH v2] fs/jfs: Add check for negative
 db_l2nbperpage
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
Cc: shaggy@kernel.org, wonguk.lee1023@gmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 liushixin2@huawei.com, andrew.kanner@gmail.com,
 syzbot+debee9ab7ae2b34b0307@syzkaller.appspotmail.com, wuhoipok@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 23/10/02 05:56PM, Juntong Deng wrote:
> Signed-off-by: Juntong Deng <juntong.deng@outlook.com>
> ---
>  fs/jfs/jfs_dmap.c | 3 ++-

Hey there, looks like you forgot to add a changelog for v1->v2? I see
you just changed the commit tags ordering but you should have that in
mind for next time :)

-	Ricardo


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
