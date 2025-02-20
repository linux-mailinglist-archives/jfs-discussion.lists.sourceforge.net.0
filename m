Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB850A3D5CD
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 11:03:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl3Nf-0002ZA-KJ;
	Thu, 20 Feb 2025 10:02:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rand.sec96@gmail.com>) id 1tl3Ne-0002Z4-4l
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 10:02:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zoFjr08aXCwnVaT8N8AoYYhHFJ2FM8ACrA3XiXjv+yE=; b=FG/Y5oP/EMDaPj9kvpDkbdC2+w
 qIWDgJYAUJOcJyV+hcKX4gA/0Md41MBvlHerE7b4o+poL7KQFTdN7PyXvsYlFI0F6g25oiwHlIVJA
 q9l8p6XK9DXOj/D1LRjraX4TLfquLnikKaOeEVicMQpgwrKJORyqhbD8Zv1eODYQM61M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zoFjr08aXCwnVaT8N8AoYYhHFJ2FM8ACrA3XiXjv+yE=; b=V0LgMfocnIcZye2YOCVZQ3X2YV
 yvQPbVVZRL6AEDwG8EFJfu+KQWRnugb4PjBouQKDeAuCbI2Ubpygj+ueVbJcvgm8AbrZbyAlDPW/z
 wC0dZHDiEvdqk9C6pno3uD2ZnSmsJIFGj5vbYzsfxPu1EnSC4M9RG4rRAXkdG/zDjbyc=;
Received: from mail-lf1-f42.google.com ([209.85.167.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tl3Nd-0000Qn-Lc for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 10:02:06 +0000
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-5462ea9691cso885432e87.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Feb 2025 02:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740045714; x=1740650514; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zoFjr08aXCwnVaT8N8AoYYhHFJ2FM8ACrA3XiXjv+yE=;
 b=DUMvRNwkDRljbZSBlBn24BuuJjDzYUsoF010znQ4XvPzoBDefphKjzAhrJwPTyAJxr
 ySSauLqLOAqiMKX1KSw59LbV4qhV60X3AVGsTiEdUEsNl05yy1J11EE6Z+izvbG4Y0W2
 xIAytGiMG6M5iXzlbpJ91PItCE05ufzYARJG8FwcI8fLfLvtk8LmWq1PzSIPwpxYVxcX
 8bNI9gvvRMfW9i5F4PO6AgV/w5wz5F7B6DOQ6uhZqb9QQ+INf8U02ZHUye5UJ/Wv4X90
 KKXEZbu8buecelDZfwLYmsVq4g4UtXJYAse5dpCRUwBeDr5DF+GTJ8SN+AFXulE7kcuV
 jPzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740045714; x=1740650514;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zoFjr08aXCwnVaT8N8AoYYhHFJ2FM8ACrA3XiXjv+yE=;
 b=oWvhgL2ZZXjsyoJRVGJCMkF5NE7ETR4rBCur35Cw1GpArOoeXy4MNRozW/lPppb4WE
 YmszfcWxWoB47Qykq9KcXO85wbpwEJp17b2Rjk+34J7hRvV7ucgjK717Zyw9NpYMUuhY
 2Z3gI8QIsNkZq+KiioonEcYqz8+GseSHH02oBp6NXgShgJAfFwYnGccIPdw558jbVihD
 fuY3ky9tRLBRBNDIPrnV/ktt42bW2uVueaGaSItMOJnYEuWnSBobWOxIZ1yvGdLhW/HP
 +ZlRy4yDP22/spKr2AlHJfK6FFn4/MVHUv+y9VEm9LIlPI0UpD+1/2IQwtpqLUgfKDCU
 29AQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWODh/CIVb+Wne+TbkwPmALw8kgtKDu0KL4dHOeGJ0ECg3GNN13DqmBgSQUPB3KHElmpyBudzj/vaXy0MeClA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxFHYsw2358/YOUUdPhh/4KM2kI0BLXpzGahp4PcKj8/xN173kj
 agnayaX/sV1pmUz1f1qlWTgGSFpM0zP5j70jfpMbmsEnyLc6gjSD3l6ctKsoEwq5fPhvl3D72Dc
 jZeZBKClqPJEjA8U6/OoEDXilbiY=
X-Gm-Gg: ASbGncvWA0vKGCTGHmfuq5h6utIveggXLlgUQjfuew8WPQag4tH1c4Otu4OaGDMAnzL
 JOwUE537gjM+pWs43aQ8nSe/6P22Lzqh9EHPS/LojcTSWVcq3CxXipwFiloRbZz/VbrkvFM3aZO
 s=
X-Google-Smtp-Source: AGHT+IE776qp3jN6n9tegTYmteckduIV2mwQRn13Jm+yWrMasZfBROhiMgcJbIr570ipWAOo66p/jBjJm5g6x7AzTq8=
X-Received: by 2002:a05:6512:132a:b0:545:2f0c:a29c with SMTP id
 2adb3069b0e04-5462ef158f5mr2846077e87.36.1740045713762; Thu, 20 Feb 2025
 02:01:53 -0800 (PST)
MIME-Version: 1.0
References: <20250218124428.1638816-1-rand.sec96@gmail.com>
 <dmsdrpn5c5x3aqsgjiapqem4akvof2jezgyj4liqkeveo2cect@lb4s4krxfhtm>
In-Reply-To: <dmsdrpn5c5x3aqsgjiapqem4akvof2jezgyj4liqkeveo2cect@lb4s4krxfhtm>
Date: Thu, 20 Feb 2025 13:01:42 +0300
X-Gm-Features: AWEUYZk2cB3JQpk7UIYlPObrCYEB7DRX2RBVdGy7mYirXf3nm8O1wqcwYmkH_4E
Message-ID: <CAN8dotkL9U0a4bSx1REYm+JkdfwXjouOSEa5Yh94+V0NJRYRQA@mail.gmail.com>
To: Fedor Pchelkin <pchelkin@ispras.ru>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Feb 19, 2025 at 1:43 PM Fedor Pchelkin wrote: >
   Same here. The patch is supposed to address the issue in the mainline > first..
    What is the reason for '5.10.y' in the subject? > Done. 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.42 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.167.42 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.167.42 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rand.sec96[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [rand.sec96[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.42 listed in wl.mailspike.net]
X-Headers-End: 1tl3Nd-0000Qn-Lc
Subject: Re: [Jfs-discussion] [PATCH 5.10.y] fs/jfs: Prevent integer
 overflow in AG size calculation
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
From: Rand Deeb via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Rand Deeb <rand.sec96@gmail.com>
Cc: voskresenski.stanislav@confident.ru, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, lvc-project@linuxtesting.org,
 linux-kernel@vger.kernel.org, deeb.rand@confident.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBGZWIgMTksIDIwMjUgYXQgMTo0M+KAr1BNIEZlZG9yIFBjaGVsa2luIDxwY2hlbGtp
bkBpc3ByYXMucnU+IHdyb3RlOgo+IFNhbWUgaGVyZS4gVGhlIHBhdGNoIGlzIHN1cHBvc2VkIHRv
IGFkZHJlc3MgdGhlIGlzc3VlIGluIHRoZSBtYWlubGluZQo+IGZpcnN0Li4gV2hhdCBpcyB0aGUg
cmVhc29uIGZvciAnNS4xMC55JyBpbiB0aGUgc3ViamVjdD8KPgpEb25lLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
